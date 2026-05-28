#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LATEST_RUN="$(find "$ROOT_DIR/report" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"

if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories found in $ROOT_DIR/report"
  exit 1
fi

RUN_ID="$(basename "$LATEST_RUN")"
HOST_OUT_DIR="$LATEST_RUN/element-compare"
CONTAINER_OUT_DIR="/var/www/html/.ddev/drupal-admin-vrt/element-compare-out"

rm -rf "$HOST_OUT_DIR"
mkdir -p "$HOST_OUT_DIR"

cd "$ROOT_DIR/drupal-git"

ddev exec -d /var/www/html/.ddev/drupal-admin-vrt env \
  BASELINE_URL="http://drupal-11.3.10.ddev.site" \
  CANDIDATE_URL="http://drupal-git.ddev.site:8080" \
  DRUPAL_ADMIN_USER="admin" \
  DRUPAL_ADMIN_PASS="adminadminadmin" \
  OUT_DIR="$CONTAINER_OUT_DIR" \
  node - <<'NODE'
const fs = require('fs');
const path = require('path');
const { chromium } = require('playwright');

const baselineUrl = process.env.BASELINE_URL;
const candidateUrl = process.env.CANDIDATE_URL;
const username = process.env.DRUPAL_ADMIN_USER;
const password = process.env.DRUPAL_ADMIN_PASS;
const outDir = process.env.OUT_DIR;
const baselineLabel = 'Drupal 11 with Gin';
const candidateLabel = 'Drupal 12 with Admin Theme';

const routes = [
  { id: 'appearance', path: '/admin/appearance', label: 'Appearance' },
  { id: 'config', path: '/admin/config', label: 'Configuration' },
  { id: 'content', path: '/admin/content', label: 'Content' },
  { id: 'structure', path: '/admin/structure', label: 'Structure' },
  { id: 'people', path: '/admin/people', label: 'People' },
];

const components = [
  { id: 'required-marker', label: 'Required Marker (*)', selector: 'label.form-required, .form-required' },
  { id: 'h2', label: 'H2 Heading', selector: 'h2' },
  { id: 'input-text', label: 'Text Input', selector: 'input[type="text"], input.form-text' },
  { id: 'textarea', label: 'Textarea', selector: 'textarea' },
  { id: 'button', label: 'Button', selector: 'button, input[type="submit"], .button' },
  { id: 'form-item', label: 'Form Item Wrapper', selector: '.form-item' },
  { id: 'table-header', label: 'Table Header Cell', selector: 'table thead th' },
  { id: 'table-cell', label: 'Table Body Cell', selector: 'table tbody td' },
  { id: 'details-summary', label: 'Details Summary', selector: 'details > summary' },
  { id: 'label', label: 'Form Label', selector: 'label' },
];

function num(val) {
  const n = parseFloat(String(val || '').replace('px', ''));
  return Number.isFinite(n) ? n : 0;
}

function avg(arr) {
  if (!arr.length) return 0;
  return arr.reduce((a, b) => a + b, 0) / arr.length;
}

function pctDiff(a, b) {
  if (!a && !b) return 0;
  if (!a) return 100;
  return ((b - a) / a) * 100;
}

async function login(page, baseUrl) {
  await page.goto(`${baseUrl}/user/login`, { waitUntil: 'networkidle' });
  await page.getByLabel('Username').fill(username);
  await page.getByLabel('Password').fill(password);
  await page.getByRole('button', { name: 'Log in' }).click();
  await page.waitForLoadState('networkidle');
}

async function measure(page, selector, max = 8) {
  return await page.evaluate(({ selector, max }) => {
    const nodes = Array.from(document.querySelectorAll(selector)).slice(0, max);
    return nodes.map((node) => {
      const style = getComputedStyle(node);
      const rect = node.getBoundingClientRect();
      const txt = (node.textContent || '').trim().replace(/\s+/g, ' ').slice(0, 80);
      return {
        fontSize: style.fontSize,
        lineHeight: style.lineHeight,
        fontWeight: style.fontWeight,
        paddingTop: style.paddingTop,
        paddingRight: style.paddingRight,
        paddingBottom: style.paddingBottom,
        paddingLeft: style.paddingLeft,
        marginTop: style.marginTop,
        marginBottom: style.marginBottom,
        width: `${rect.width}px`,
        height: `${rect.height}px`,
        text: txt,
      };
    });
  }, { selector, max });
}

async function collectCssSources(page, selector, maxMatches = 12) {
  return await page.evaluate(({ selector, maxMatches }) => {
    const target = document.querySelector(selector);
    if (!target) return [];

    const matches = [];
    const seen = new Set();

    const pushMatch = (href, selectorText) => {
      const src = href || 'inline:<style>';
      const key = `${src}::${selectorText}`;
      if (seen.has(key)) return;
      seen.add(key);
      matches.push({ source: src, selector: selectorText });
    };

    const walkRules = (rules, href) => {
      for (const rule of rules) {
        if (matches.length >= maxMatches) return;
        if (rule.type === CSSRule.STYLE_RULE && rule.selectorText) {
          try {
            if (target.matches(rule.selectorText)) {
              pushMatch(href, rule.selectorText);
            }
          } catch {
            // Ignore selectors unsupported by matches().
          }
        } else if (rule.cssRules) {
          try {
            walkRules(rule.cssRules, href);
          } catch {
            // Ignore nested rule parsing issues.
          }
        }
      }
    };

    for (const sheet of Array.from(document.styleSheets)) {
      if (matches.length >= maxMatches) break;
      try {
        walkRules(sheet.cssRules || [], sheet.href || 'inline:<style>');
      } catch {
        // Cross-origin stylesheets can throw SecurityError.
      }
    }

    return matches;
  }, { selector, maxMatches });
}

function normalizeCssSource(source) {
  if (!source) return '';
  try {
    const u = new URL(source);
    return `${u.origin}${u.pathname}`;
  } catch {
    return source;
  }
}

function cssSourceList(sources) {
  return [...new Set((sources || []).map((s) => normalizeCssSource(s.source)).filter(Boolean))];
}

function likelyCssFiles(baseSources, candSources) {
  const base = new Set(cssSourceList(baseSources));
  const cand = cssSourceList(candSources);
  const overlap = cand.filter((src) => base.has(src));
  return overlap.length ? overlap : cand;
}

function summarize(measures) {
  return {
    count: measures.length,
    fontSize: avg(measures.map((m) => num(m.fontSize))),
    lineHeight: avg(measures.map((m) => num(m.lineHeight))),
    fontWeight: avg(measures.map((m) => num(m.fontWeight))),
    paddingY: avg(measures.map((m) => num(m.paddingTop) + num(m.paddingBottom))),
    paddingX: avg(measures.map((m) => num(m.paddingLeft) + num(m.paddingRight))),
    marginY: avg(measures.map((m) => num(m.marginTop) + num(m.marginBottom))),
    width: avg(measures.map((m) => num(m.width))),
    height: avg(measures.map((m) => num(m.height))),
    samples: measures.map((m) => m.text).filter(Boolean).slice(0, 3),
  };
}

function compareStats(base, cand) {
  const checks = [
    ['fontSize', 5],
    ['lineHeight', 5],
    ['paddingY', 8],
    ['paddingX', 8],
    ['width', 10],
    ['height', 10],
  ];

  const deltas = checks.map(([key, threshold]) => {
    const delta = pctDiff(base[key], cand[key]);
    const abs = Math.abs(delta);
    return { key, delta, abs, threshold, flagged: abs >= threshold };
  });

  const countDelta = cand.count - base.count;
  const countDeltaPct = pctDiff(base.count, cand.count);
  const countFlagged = Math.abs(countDeltaPct) >= 25;

  return {
    deltas,
    countDelta,
    countDeltaPct,
    countFlagged,
    significant: deltas.filter((d) => d.flagged).length + (countFlagged ? 1 : 0),
  };
}

function esc(s) {
  return String(s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}

(async () => {
  fs.rmSync(outDir, { recursive: true, force: true });
  fs.mkdirSync(path.join(outDir, 'baseline'), { recursive: true });
  fs.mkdirSync(path.join(outDir, 'candidate'), { recursive: true });

  const browser = await chromium.launch({ headless: true });

  const baselineCtx = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
  const candidateCtx = await browser.newContext({ viewport: { width: 1440, height: 1024 } });

  const baselinePage = await baselineCtx.newPage();
  const candidatePage = await candidateCtx.newPage();

  await login(baselinePage, baselineUrl);
  await login(candidatePage, candidateUrl);

  const rows = [];

  for (const route of routes) {
    await baselinePage.goto(`${baselineUrl}${route.path}`, { waitUntil: 'networkidle' });
    await candidatePage.goto(`${candidateUrl}${route.path}`, { waitUntil: 'networkidle' });

    for (const component of components) {
      const baseMeasures = await measure(baselinePage, component.selector);
      const candMeasures = await measure(candidatePage, component.selector);
      const baseCssSources = await collectCssSources(baselinePage, component.selector);
      const candCssSources = await collectCssSources(candidatePage, component.selector);

      const baseSummary = summarize(baseMeasures);
      const candSummary = summarize(candMeasures);
      const comparison = compareStats(baseSummary, candSummary);
      const likelyCss = likelyCssFiles(baseCssSources, candCssSources);

      const fileBase = `${route.id}__${component.id}`;
      const baselineShot = `baseline/${fileBase}.png`;
      const candidateShot = `candidate/${fileBase}.png`;

      const bLoc = baselinePage.locator(component.selector).first();
      const cLoc = candidatePage.locator(component.selector).first();

      if (await bLoc.count()) {
        try {
          if (await bLoc.isVisible()) {
            await bLoc.scrollIntoViewIfNeeded({ timeout: 3000 });
            await bLoc.screenshot({ path: path.join(outDir, baselineShot) });
          }
        } catch {
          // Skip non-actionable baseline element screenshot.
        }
      }
      if (await cLoc.count()) {
        try {
          if (await cLoc.isVisible()) {
            await cLoc.scrollIntoViewIfNeeded({ timeout: 3000 });
            await cLoc.screenshot({ path: path.join(outDir, candidateShot) });
          }
        } catch {
          // Skip non-actionable candidate element screenshot.
        }
      }

      rows.push({
        route: route.label,
        routePath: route.path,
        baselineUrl: `${baselineUrl}${route.path}`,
        candidateUrl: `${candidateUrl}${route.path}`,
        component: component.label,
        componentId: component.id,
        selector: component.selector,
        baseline: baseSummary,
        candidate: candSummary,
        comparison,
        baselineCssSources: baseCssSources,
        candidateCssSources: candCssSources,
        likelyCssFiles: likelyCss,
        baselineShot,
        candidateShot,
      });
    }
  }

  await baselineCtx.close();
  await candidateCtx.close();
  await browser.close();

  const componentAgg = {};
  for (const row of rows) {
    const key = row.component;
    componentAgg[key] = componentAgg[key] || { total: 0, flagged: 0 };
    componentAgg[key].total += 1;
    if (row.comparison.significant > 0) componentAgg[key].flagged += 1;
  }

  const data = {
    generatedAt: new Date().toISOString(),
    baselineLabel,
    candidateLabel,
    rows,
    componentAgg,
  };

  fs.writeFileSync(path.join(outDir, 'element-compare.json'), JSON.stringify(data, null, 2));

  const aggRows = Object.entries(componentAgg)
    .map(([name, s]) => `<tr><td>${esc(name)}</td><td>${s.flagged}</td><td>${s.total}</td></tr>`)
    .join('');

  const rowHtml = rows.map((row) => {
    const sig = row.comparison.significant;
    const className = sig > 0 ? 'flagged' : '';
    const diffs = [];
    for (const d of row.comparison.deltas) {
      if (d.flagged) {
        diffs.push(`${d.key}: ${d.delta.toFixed(1)}%`);
      }
    }
    if (row.comparison.countFlagged) {
      diffs.push(`count: ${row.comparison.countDelta > 0 ? '+' : ''}${row.comparison.countDelta} (${row.comparison.countDeltaPct.toFixed(1)}%)`);
    }

    const cssSources = row.likelyCssFiles.length ? row.likelyCssFiles : ['unknown'];
    const cssKey = cssSources[0] || 'unknown';
    const cssMeta = cssSources.slice(0, 3).map((s) => esc(s)).join(' | ');

    return `
      <tr class="${className}" data-route="${esc(row.route)}" data-component="${esc(row.component)}" data-significant="${sig > 0 ? 'yes' : 'no'}" data-css="${esc(cssKey)}">
        <td>
          <div><strong>${esc(row.route)}</strong></div>
          <div>${esc(row.component)}</div>
          <div class="meta"><a href="${esc(row.baselineUrl)}" target="_blank" rel="noopener">${esc(baselineLabel)} URL</a></div>
          <div class="meta"><a href="${esc(row.candidateUrl)}" target="_blank" rel="noopener">${esc(candidateLabel)} URL</a></div>
          <div class="meta">${esc(row.selector)}</div>
          <div class="meta"><strong>Likely CSS:</strong> ${cssMeta}</div>
        </td>
        <td>
          <div>count: ${row.baseline.count}</div>
          <div>font-size: ${row.baseline.fontSize.toFixed(1)}px</div>
          <div>line-height: ${row.baseline.lineHeight.toFixed(1)}px</div>
          <div>padding-y: ${row.baseline.paddingY.toFixed(1)}px</div>
          <div>width: ${row.baseline.width.toFixed(1)}px</div>
          <div class="meta">${esc(row.baseline.samples.join(' | '))}</div>
          ${row.baselineShot ? `<img src="${esc(row.baselineShot)}" alt="Baseline ${esc(row.component)} ${esc(row.route)}" />` : '<em>No baseline element</em>'}
        </td>
        <td>
          <div>count: ${row.candidate.count}</div>
          <div>font-size: ${row.candidate.fontSize.toFixed(1)}px</div>
          <div>line-height: ${row.candidate.lineHeight.toFixed(1)}px</div>
          <div>padding-y: ${row.candidate.paddingY.toFixed(1)}px</div>
          <div>width: ${row.candidate.width.toFixed(1)}px</div>
          <div class="meta">${esc(row.candidate.samples.join(' | '))}</div>
          ${row.candidateShot ? `<img src="${esc(row.candidateShot)}" alt="Candidate ${esc(row.component)} ${esc(row.route)}" />` : '<em>No candidate element</em>'}
        </td>
        <td>
          ${diffs.length ? `<div>${diffs.map(esc).join('<br/>')}</div>` : '<div>No major delta</div>'}
        </td>
      </tr>`;
  }).join('');

  const routeLinksHtml = routes.map((r) => {
    const b = `${baselineUrl}${r.path}`;
    const c = `${candidateUrl}${r.path}`;
    return `<tr><td>${esc(r.label)}</td><td>${esc(r.path)}</td><td><a href="${esc(b)}" target="_blank" rel="noopener">${esc(b)}</a></td><td><a href="${esc(c)}" target="_blank" rel="noopener">${esc(c)}</a></td></tr>`;
  }).join('');

  const html = `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Element Compare Dashboard</title>
<style>
  body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; margin: 0; background: #f4f6f8; color: #1c2633; }
  header { position: sticky; top: 0; background: #102a43; color: #fff; padding: 12px 16px; z-index: 10; }
  .sub { font-size: 13px; opacity: 0.9; }
  main { padding: 16px; }
  .controls { display: grid; grid-template-columns: repeat(6, minmax(160px, 1fr)); gap: 8px; margin-bottom: 14px; }
  select, input { padding: 8px; border: 1px solid #bcccdc; border-radius: 6px; }
  table { width: 100%; border-collapse: collapse; background: #fff; }
  th, td { border: 1px solid #d9e2ec; padding: 8px; vertical-align: top; }
  th { background: #e6edf5; text-align: left; }
  tr.flagged { background: #fff7e6; }
  .meta { font-size: 12px; color: #52606d; margin-top: 4px; }
  img { max-width: 100%; border: 1px solid #cbd2d9; margin-top: 6px; }
  .agg { margin-bottom: 16px; }
  .agg table { width: auto; min-width: 420px; }
</style>
</head>
<body>
<header>
  <div><strong>System-Wide Element Comparison Dashboard</strong></div>
  <div class="sub">${esc(data.baselineLabel)} vs ${esc(data.candidateLabel)} | Generated: ${esc(data.generatedAt)}</div>
</header>
<main>
  <section class="agg">
    <h2>Component Delta Summary</h2>
    <table>
      <thead><tr><th>Component</th><th>Flagged Routes</th><th>Total Routes</th></tr></thead>
      <tbody>${aggRows}</tbody>
    </table>
  </section>

  <section class="agg">
    <h2>Test URLs Used</h2>
    <table>
      <thead><tr><th>Section</th><th>Route</th><th>${esc(baselineLabel)}</th><th>${esc(candidateLabel)}</th></tr></thead>
      <tbody>${routeLinksHtml}</tbody>
    </table>
  </section>

  <section>
    <h2>Detailed Element Comparison</h2>
    <div class="controls">
      <input id="textFilter" placeholder="Search route/component/selector" />
      <select id="routeFilter"><option value="">All routes</option></select>
      <select id="componentFilter"><option value="">All components</option></select>
      <select id="signalFilter">
        <option value="">All rows</option>
        <option value="yes">Only flagged rows</option>
      </select>
      <select id="cssFilter"><option value="">All CSS files</option></select>
      <select id="sortOrder">
        <option value="route">Sort: Route</option>
        <option value="component">Sort: Component</option>
        <option value="css">Sort: CSS source</option>
        <option value="flagged">Sort: Flagged first</option>
      </select>
    </div>

    <table id="resultsTable">
      <thead>
        <tr>
          <th>Route / Component</th>
          <th>Drupal 11 with Gin</th>
          <th>Drupal 12 with Admin Theme</th>
          <th>Key Deltas</th>
        </tr>
      </thead>
      <tbody>
        ${rowHtml}
      </tbody>
    </table>
  </section>
</main>
<script>
  const rows = [...document.querySelectorAll('#resultsTable tbody tr')];
  const tbody = document.querySelector('#resultsTable tbody');
  const routeFilter = document.getElementById('routeFilter');
  const componentFilter = document.getElementById('componentFilter');
  const signalFilter = document.getElementById('signalFilter');
  const cssFilter = document.getElementById('cssFilter');
  const sortOrder = document.getElementById('sortOrder');
  const textFilter = document.getElementById('textFilter');

  const routes = [...new Set(rows.map(r => r.dataset.route))].sort();
  const components = [...new Set(rows.map(r => r.dataset.component))].sort();
  const cssSources = [...new Set(rows.map(r => r.dataset.css || 'unknown'))].sort();

  for (const r of routes) {
    const opt = document.createElement('option');
    opt.value = r; opt.textContent = r;
    routeFilter.appendChild(opt);
  }
  for (const c of components) {
    const opt = document.createElement('option');
    opt.value = c; opt.textContent = c;
    componentFilter.appendChild(opt);
  }
  for (const css of cssSources) {
    const opt = document.createElement('option');
    opt.value = css; opt.textContent = css;
    cssFilter.appendChild(opt);
  }

  function sortRows(order) {
    const get = (r, key) => (r.dataset[key] || '').toLowerCase();
    const sorted = [...rows].sort((a, b) => {
      if (order === 'component') return get(a, 'component').localeCompare(get(b, 'component'));
      if (order === 'css') return get(a, 'css').localeCompare(get(b, 'css'));
      if (order === 'flagged') return get(b, 'significant').localeCompare(get(a, 'significant'));
      return get(a, 'route').localeCompare(get(b, 'route'));
    });

    for (const row of sorted) {
      tbody.appendChild(row);
    }
  }

  function applyFilters() {
    const route = routeFilter.value;
    const comp = componentFilter.value;
    const sig = signalFilter.value;
    const css = cssFilter.value;
    const txt = textFilter.value.toLowerCase().trim();

    for (const row of rows) {
      const matchesRoute = !route || row.dataset.route === route;
      const matchesComp = !comp || row.dataset.component === comp;
      const matchesSig = !sig || row.dataset.significant === sig;
      const matchesCss = !css || row.dataset.css === css;
      const matchesTxt = !txt || row.textContent.toLowerCase().includes(txt);
      row.style.display = (matchesRoute && matchesComp && matchesSig && matchesCss && matchesTxt) ? '' : 'none';
    }

    sortRows(sortOrder.value);
  }

  routeFilter.addEventListener('change', applyFilters);
  componentFilter.addEventListener('change', applyFilters);
  signalFilter.addEventListener('change', applyFilters);
  cssFilter.addEventListener('change', applyFilters);
  sortOrder.addEventListener('change', applyFilters);
  textFilter.addEventListener('input', applyFilters);
  applyFilters();
</script>
</body>
</html>`;

  fs.writeFileSync(path.join(outDir, 'element-compare-dashboard.html'), html);

  const flagged = rows.filter((r) => r.comparison.significant > 0);
  const bugDraftDir = path.join(outDir, 'bug-drafts');
  fs.mkdirSync(bugDraftDir, { recursive: true });

  const csvLines = ['id,title,route,component,selector,baseline_url,candidate_url,key_deltas,likely_css_files,baseline_css_sources,candidate_css_sources,evidence_baseline,evidence_candidate'];
  const indexLines = ['# Draft Bug Reports', '', `Generated: ${new Date().toISOString()}`, '', `Baseline: ${baselineLabel}`, `Candidate: ${candidateLabel}`, ''];
  const cssBuckets = {};

  let idx = 1;
  for (const row of flagged) {
    const title = `[Admin Theme] ${row.route} - ${row.component} style regression vs Drupal 11 Gin`;
    const deltas = [];
    for (const d of row.comparison.deltas) {
      if (d.flagged) {
        deltas.push(`${d.key}: ${d.delta.toFixed(1)}%`);
      }
    }
    if (row.comparison.countFlagged) {
      deltas.push(`count: ${row.comparison.countDelta > 0 ? '+' : ''}${row.comparison.countDelta} (${row.comparison.countDeltaPct.toFixed(1)}%)`);
    }

    const slug = `${String(idx).padStart(3, '0')}-${row.route.toLowerCase().replace(/[^a-z0-9]+/g, '-')}-${row.componentId}`;
    const mdName = `${slug}.md`;
    const mdPath = path.join(bugDraftDir, mdName);
    const cssList = (row.likelyCssFiles && row.likelyCssFiles.length) ? row.likelyCssFiles : ['unknown'];
    const baselineCssList = cssSourceList(row.baselineCssSources || []);
    const candidateCssList = cssSourceList(row.candidateCssSources || []);

    const body = [
      `# ${title}`,
      '',
      '## Summary',
      `Potential CSS regression in **${row.component}** on **${row.route}** when comparing ${baselineLabel} to ${candidateLabel}.`,
      '',
      '## Steps To Reproduce',
      `1. Open baseline page: ${row.baselineUrl}`,
      `2. Open candidate page: ${row.candidateUrl}`,
      `3. Inspect selector: ${row.selector}`,
      '4. Compare typography, spacing, sizing, and marker presence.',
      '',
      '## Expected Result',
      `${candidateLabel} should align with ${baselineLabel} for this component unless intentional and documented.`,
      '',
      '## Actual Result',
      deltas.length ? deltas.map((d) => `- ${d}`).join('\n') : '- Significant visual difference observed',
      '',
      '## Likely CSS Sources',
      cssList.map((css) => `- ${css}`).join('\n'),
      '',
      '## Candidate Matched CSS Rules',
      (row.candidateCssSources || []).length ? (row.candidateCssSources || []).map((m) => `- ${m.source} :: ${m.selector}`).join('\n') : '- No matched rules captured',
      '',
      '## Evidence',
      `- Baseline element screenshot: ${row.baselineShot}`,
      `- Candidate element screenshot: ${row.candidateShot}`,
      '- Dashboard: ../element-compare-dashboard.html',
      '',
      '## Notes',
      '- Validate whether this is planned design change or unplanned regression.',
      '- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.',
      '',
    ].join('\n');

    fs.writeFileSync(mdPath, body);

    const csvEsc = (s) => `"${String(s).replace(/"/g, '""')}"`;
    csvLines.push([
      idx,
      title,
      row.route,
      row.component,
      row.selector,
      row.baselineUrl,
      row.candidateUrl,
      deltas.join(' | '),
      cssList.join(' | '),
      baselineCssList.join(' | '),
      candidateCssList.join(' | '),
      row.baselineShot,
      row.candidateShot,
    ].map(csvEsc).join(','));

    indexLines.push(`${idx}. [${title}](bug-drafts/${mdName})`);
    for (const cssFile of cssList) {
      cssBuckets[cssFile] = cssBuckets[cssFile] || [];
      cssBuckets[cssFile].push({ idx, title, mdName });
    }
    idx += 1;
  }

  fs.writeFileSync(path.join(outDir, 'bug-drafts.csv'), `${csvLines.join('\n')}\n`);
  fs.writeFileSync(path.join(outDir, 'bug-drafts-index.md'), `${indexLines.join('\n')}\n`);

  const cssIndex = ['# Draft Bug Reports Grouped By CSS Source', '', `Generated: ${new Date().toISOString()}`, ''];
  for (const cssFile of Object.keys(cssBuckets).sort()) {
    cssIndex.push(`## ${cssFile}`);
    for (const item of cssBuckets[cssFile]) {
      cssIndex.push(`- ${item.idx}. [${item.title}](bug-drafts/${item.mdName})`);
    }
    cssIndex.push('');
  }
  fs.writeFileSync(path.join(outDir, 'bug-drafts-by-css.md'), `${cssIndex.join('\n')}\n`);
  console.log('Generated element compare dashboard');
})();
NODE

SRC_OUT_DIR="$ROOT_DIR/drupal-git/.ddev/drupal-admin-vrt/element-compare-out"
rm -rf "$HOST_OUT_DIR/baseline" "$HOST_OUT_DIR/candidate" "$HOST_OUT_DIR/bug-drafts"
mkdir -p "$HOST_OUT_DIR"

# Copy recursively from container output to host output.
ddev exec bash -lc "cd '$CONTAINER_OUT_DIR' && tar -cf - baseline candidate bug-drafts" | tar -xf - -C "$HOST_OUT_DIR"

# Copy dashboard metadata files directly from container to host.
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/element-compare-dashboard.html'" > "$HOST_OUT_DIR/element-compare-dashboard.html"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/element-compare.json'" > "$HOST_OUT_DIR/element-compare.json"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-index.md'" > "$HOST_OUT_DIR/bug-drafts-index.md"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-by-css.md'" > "$HOST_OUT_DIR/bug-drafts-by-css.md"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts.csv'" > "$HOST_OUT_DIR/bug-drafts.csv"

echo "Generated: $HOST_OUT_DIR/element-compare-dashboard.html"
