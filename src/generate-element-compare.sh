#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LATEST_RUN="$(find "$ROOT_DIR/report" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"
COLOR_MODE="${1:-both}"

if [[ "$COLOR_MODE" != "light" && "$COLOR_MODE" != "dark" && "$COLOR_MODE" != "both" ]]; then
  echo "Usage: $0 [light|dark|both]"
  exit 1
fi

if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories found in $ROOT_DIR/report"
  exit 1
fi

RUN_ID="$(basename "$LATEST_RUN")"
HOST_OUT_DIR="$LATEST_RUN/element-compare"
TMP_HOST_OUT_DIR="$LATEST_RUN/element-compare.tmp"
CONTAINER_OUT_DIR="/var/www/html/.ddev/drupal-admin-vrt/element-compare-out"

rm -rf "$TMP_HOST_OUT_DIR"
mkdir -p "$TMP_HOST_OUT_DIR"

# Clear login flood lockouts in both projects before scripted auth.
(cd "$ROOT_DIR/drupal-11.3.10" && ddev mysql -e "TRUNCATE flood;" >/dev/null 2>&1 || true)
(cd "$ROOT_DIR/drupal-git" && ddev mysql -e "TRUNCATE flood;" >/dev/null 2>&1 || true)

cd "$ROOT_DIR/drupal-git"

ddev exec --dir /var/www/html/.ddev/drupal-admin-vrt env \
  BASELINE_URL="http://drupal-11.3.10.ddev.site" \
  CANDIDATE_URL="http://drupal-git.ddev.site:8080" \
  BASELINE_REPORT_URL="${BASELINE_REPORT_URL:-http://drupal-11.3.10.ddev.site}" \
  CANDIDATE_REPORT_URL="${CANDIDATE_REPORT_URL:-http://drupal-12-git.ddev.site:8080}" \
  COLOR_MODE="$COLOR_MODE" \
  DRUPAL_ADMIN_USER="admin" \
  DRUPAL_ADMIN_PASS="admin" \
  OUT_DIR="$CONTAINER_OUT_DIR" \
  RUN_ID="$RUN_ID" \
  REPO_WEB_BASE="https://github.com/mgifford/drupal-diff/blob/main" \
  node - <<'NODE'
const fs = require('fs');
const path = require('path');
const zlib = require('zlib');
const { chromium } = require('playwright');

const baselineUrl = process.env.BASELINE_URL;
const candidateUrl = process.env.CANDIDATE_URL;
const baselineReportUrl = process.env.BASELINE_REPORT_URL || baselineUrl;
const candidateReportUrl = process.env.CANDIDATE_REPORT_URL || candidateUrl;
const colorMode = process.env.COLOR_MODE || 'both';
const username = process.env.DRUPAL_ADMIN_USER;
const password = process.env.DRUPAL_ADMIN_PASS;
const outDir = process.env.OUT_DIR;
const baselineLabel = 'Drupal 11 with Gin';
const candidateLabel = 'Drupal 12 with Admin Theme';
const runId = process.env.RUN_ID || '';
const repoWebBase = process.env.REPO_WEB_BASE || 'https://github.com/mgifford/drupal-diff/blob/main';
const repoPagesBase = (() => {
  const gh = repoWebBase.match(/^https?:\/\/github\.com\/([^/]+)\/([^/]+)/);
  if (gh) {
    return `https://${gh[1]}.github.io/${gh[2]}`;
  }
  return repoWebBase.replace('/blob/main', '');
})();
const schemes = colorMode === 'both' ? ['light', 'dark'] : [colorMode];
const defaultAdminCssRoot = '/var/www/html/core/themes/default_admin/css';

const routes = [
  { id: 'appearance-list', path: '/admin/appearance', label: 'Appearance List' },
  { id: 'config-overview', path: '/admin/config', label: 'Configuration Overview' },
  { id: 'config-performance', path: '/admin/config/development/performance', label: 'Configuration Performance' },
  { id: 'config-site-info', path: '/admin/config/system/site-information', label: 'Configuration Site Information' },
  { id: 'config-text-formats', path: '/admin/config/content/formats', label: 'Configuration Text Formats' },
  { id: 'config-text-format-basic-html', path: '/admin/config/content/formats/manage/basic_html', label: 'Configuration Basic HTML Format' },
  { id: 'config-file-system', path: '/admin/config/media/file-system', label: 'Configuration File System' },
  { id: 'content-overview', path: '/admin/content', label: 'Content Overview' },
  { id: 'content-add-article', path: '/node/add/article', label: 'Content Add Article' },
  { id: 'structure-overview', path: '/admin/structure', label: 'Structure Overview' },
  { id: 'structure-block-layout', path: '/admin/structure/block', label: 'Structure Block Layout' },
  { id: 'structure-content-types', path: '/admin/structure/types', label: 'Structure Content Types' },
  { id: 'structure-content-type-article', path: '/admin/structure/types/manage/article', label: 'Structure Content Type Article' },
  { id: 'structure-content-type-article-fields', path: '/admin/structure/types/manage/article/fields', label: 'Structure Article Fields' },
  { id: 'structure-content-type-article-display', path: '/admin/structure/types/manage/article/display', label: 'Structure Article Display' },
  { id: 'structure-menus', path: '/admin/structure/menu', label: 'Structure Menus' },
  { id: 'structure-menu-admin', path: '/admin/structure/menu/manage/admin', label: 'Structure Admin Menu' },
  { id: 'structure-taxonomy', path: '/admin/structure/taxonomy', label: 'Structure Taxonomy' },
  { id: 'structure-views', path: '/admin/structure/views', label: 'Structure Views' },
  { id: 'structure-view-content', path: '/admin/structure/views/view/content', label: 'Structure Content View' },
  {
    id: 'theme-settings',
    path: '/admin/appearance/settings',
    baselinePath: '/admin/appearance/settings/gin',
    candidatePath: '/admin/appearance/settings/default_admin',
    label: 'Theme Settings (Gin vs Default Admin)',
    settingsProfiles: true,
  },
  { id: 'block-content', path: '/admin/structure/block-content', label: 'Block Content Types' },
  { id: 'people-list', path: '/admin/people', label: 'People List' },
  { id: 'people-roles', path: '/admin/people/roles', label: 'People Roles' },
  { id: 'people-permissions', path: '/admin/people/permissions', label: 'People Permissions' },
  { id: 'reports-status', path: '/admin/reports/status', label: 'Reports Status' },
  { id: 'reports-updates', path: '/admin/reports/updates', label: 'Reports Updates' },
];

const defaultSettingsProfile = {
  id: 'default',
  label: 'Default',
  density: ['default', 'normal', 'standard'],
  increaseContrast: false,
  formDescriptions: false,
};

const settingsProfiles = [
  defaultSettingsProfile,
  {
    id: 'density-compact',
    label: 'Density Compact',
    density: ['compact'],
    increaseContrast: false,
    formDescriptions: false,
  },
  {
    id: 'density-comfortable',
    label: 'Density Comfortable',
    density: ['comfortable', 'cozy', 'spacious'],
    increaseContrast: false,
    formDescriptions: false,
  },
  {
    id: 'increase-contrast',
    label: 'Increase Contrast On',
    density: ['default', 'normal', 'standard'],
    increaseContrast: true,
    formDescriptions: false,
  },
  {
    id: 'form-descriptions',
    label: 'Form Descriptions On',
    density: ['default', 'normal', 'standard'],
    increaseContrast: false,
    formDescriptions: true,
  },
  {
    id: 'contrast-and-descriptions',
    label: 'Contrast and Form Descriptions On',
    density: ['default', 'normal', 'standard'],
    increaseContrast: true,
    formDescriptions: true,
  },
];

const components = [
  { id: 'required-marker', label: 'Required Marker (*)', selector: 'label.form-required, .form-required' },
  { id: 'page-title-heading', label: 'Page Title Heading (h1)', selector: 'h1.page-title, .page-title h1, .page-title' },
  { id: 'input-text', label: 'Text Input', selector: 'input[type="text"], input.form-text' },
  { id: 'textarea', label: 'Textarea', selector: 'textarea' },
  { id: 'button', label: 'Button', selector: 'button, input[type="submit"], .button' },
  { id: 'form-item', label: 'Form Item Wrapper', selector: '.form-item' },
  { id: 'table-header', label: 'Table Header Cell', selector: 'table thead th' },
  { id: 'table-cell', label: 'Table Body Cell', selector: 'table tbody td' },
  { id: 'details-summary', label: 'Details Summary', selector: 'details > summary' },
  { id: 'label', label: 'Form Label', selector: 'label' },
  { id: 'dropbutton-wrapper', label: 'Dropbutton Wrapper', selector: '.dropbutton-wrapper.dropbutton-multiple, .dropbutton-wrapper' },
  { id: 'dropbutton-primary-action', label: 'Dropbutton Primary Action Link', selector: '.dropbutton-wrapper .dropbutton__item.dropbutton-action > a' },
  { id: 'dropbutton-toggle', label: 'Dropbutton Toggle Button', selector: '.dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle' },
  { id: 'dropbutton-secondary-list', label: 'Dropbutton Secondary Actions List', selector: '.dropbutton-wrapper .dropbutton__items' },
  { id: 'dropbutton-secondary-action', label: 'Dropbutton Secondary Action Link', selector: '.dropbutton-wrapper .dropbutton__items .dropbutton__item a' },
  { id: 'toolbar-structure-toggle', label: 'Toolbar Structure Toggle Button', selector: 'button.toolbar-link.toolbar-link--system-admin-structure' },
  { id: 'contextual-config-trigger', label: 'Contextual Config Trigger Button', selector: 'button.trigger.focusable, button.trigger[aria-pressed], .contextual .trigger' },
];

async function expandDropbuttons(page) {
  const toggles = page.locator('.dropbutton-wrapper .dropbutton__toggle, .dropbutton-toggle button.dropbutton__toggle');
  const count = await toggles.count();
  const max = Math.min(count, 3);

  for (let i = 0; i < max; i++) {
    const toggle = toggles.nth(i);
    try {
      if (!(await toggle.isVisible())) {
        continue;
      }
      await toggle.scrollIntoViewIfNeeded({ timeout: 3000 });
      await toggle.click({ timeout: 2000 });
      await page.waitForTimeout(150);
    } catch {
      // Non-fatal: continue with best-effort dropbutton expansion.
    }
  }
}

const broadSelectors = new Set([
  '*', 'html', 'body', ':root',
  'h1', 'h2', 'h3', 'h4', 'h5', 'h6',
  'p', 'a', 'ul', 'ol', 'li',
  'table', 'thead', 'tbody', 'tr', 'th', 'td',
  'button', 'input', 'textarea', 'label', 'summary', 'details',
]);

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

  const loginFailed = await page.locator('h1:has-text("Login failed")').count();
  const stillLogin = page.url().includes('/user/login') && (await page.getByRole('button', { name: 'Log in' }).count()) > 0;
  if (loginFailed || stillLogin) {
    throw new Error(`Authentication failed for ${baseUrl}; current URL=${page.url()}`);
  }
}

async function assertRouteAccessible(page, url, sideLabel, response) {
  const status = response ? response.status() : 0;
  const h1 = ((await page.locator('h1').first().textContent().catch(() => '')) || '').trim().toLowerCase();
  if (status === 401 || status === 403 || h1 === 'access denied') {
    throw new Error(`Access denied in ${sideLabel} while visiting ${url}`);
  }
}

async function applyThemeSettingsProfile(page, profile) {
  const result = await page.evaluate((p) => {
    const normalize = (text) => String(text || '').toLowerCase().replace(/\s+/g, ' ').trim();

    const findCheckboxByMatchers = (matchers) => {
      const labels = Array.from(document.querySelectorAll('label'));
      for (const label of labels) {
        const labelText = normalize(label.textContent || '');
        if (!matchers.some((m) => m.test(labelText))) continue;

        const forId = label.getAttribute('for');
        if (forId) {
          const input = document.getElementById(forId);
          if (input && input.matches('input[type="checkbox"]')) return input;
        }

        const nested = label.querySelector('input[type="checkbox"]');
        if (nested) return nested;
      }

      const checkboxes = Array.from(document.querySelectorAll('input[type="checkbox"]'));
      for (const cb of checkboxes) {
        const bag = normalize(`${cb.id || ''} ${cb.name || ''} ${cb.getAttribute('aria-label') || ''} ${cb.getAttribute('title') || ''}`);
        if (matchers.some((m) => m.test(bag))) return cb;
      }
      return null;
    };

    const setCheckbox = (input, desired) => {
      if (!input) return false;
      if (Boolean(input.checked) !== Boolean(desired)) {
        input.checked = Boolean(desired);
        input.dispatchEvent(new Event('input', { bubbles: true }));
        input.dispatchEvent(new Event('change', { bubbles: true }));
      }
      return true;
    };

    const densitySelectCandidates = Array.from(document.querySelectorAll('select')).filter((sel) => {
      const bag = normalize(`${sel.id || ''} ${sel.name || ''}`);
      if (bag.includes('density')) return true;
      const label = sel.id ? document.querySelector(`label[for="${sel.id}"]`) : null;
      const labelText = normalize(label ? label.textContent : '');
      return labelText.includes('density');
    });

    let densityApplied = false;
    if (densitySelectCandidates.length && Array.isArray(p.density) && p.density.length) {
      for (const sel of densitySelectCandidates) {
        const options = Array.from(sel.options || []);
        let chosen = options.find((opt) => {
          const txt = normalize(`${opt.text} ${opt.value}`);
          return p.density.some((needle) => txt.includes(normalize(needle)));
        });

        if (!chosen && p.id === 'default') {
          chosen = options.find((opt) => {
            const txt = normalize(`${opt.text} ${opt.value}`);
            return txt.includes('default') || txt.includes('normal') || txt.includes('standard');
          }) || options[0];
        }

        if (chosen) {
          sel.value = chosen.value;
          sel.dispatchEvent(new Event('input', { bubbles: true }));
          sel.dispatchEvent(new Event('change', { bubbles: true }));
          densityApplied = true;
          break;
        }
      }
    }

    const contrastCheckbox = findCheckboxByMatchers([
      /increase contrast/,
      /high contrast/,
      /contrast mode/,
    ]);

    const descriptionsCheckbox = findCheckboxByMatchers([
      /form description/,
      /show form description/,
      /display form description/,
    ]);

    const contrastApplied = setCheckbox(contrastCheckbox, Boolean(p.increaseContrast));
    const descriptionsApplied = setCheckbox(descriptionsCheckbox, Boolean(p.formDescriptions));

    return {
      densityApplied,
      contrastApplied,
      descriptionsApplied,
    };
  }, profile);

  const saveButton = page.getByRole('button', { name: /save configuration|save/i }).first();
  if (await saveButton.count()) {
    await saveButton.click();
    await page.waitForLoadState('networkidle');
  }

  return result;
}

async function measure(page, selector, max = 8) {
  return await page.evaluate(({ selector, max }) => {
    const isVisibleForCapture = (node) => {
      if (!node || node.nodeType !== Node.ELEMENT_NODE) return false;
      const style = getComputedStyle(node);
      if (style.display === 'none' || style.visibility === 'hidden') return false;
      if (Number.parseFloat(style.opacity || '1') <= 0) return false;
      const rect = node.getBoundingClientRect();
      if (!Number.isFinite(rect.width) || !Number.isFinite(rect.height)) return false;
      if (rect.width < 8 || rect.height < 8) return false;
      if (rect.bottom < 0 || rect.right < 0) return false;
      return true;
    };

    const toXPath = (node) => {
      if (!node || node.nodeType !== Node.ELEMENT_NODE) return '';
      if (node.id) {
        return `//*[@id="${node.id}"]`;
      }

      const parts = [];
      let cur = node;
      while (cur && cur.nodeType === Node.ELEMENT_NODE) {
        let idx = 1;
        let sib = cur.previousElementSibling;
        while (sib) {
          if (sib.tagName === cur.tagName) idx += 1;
          sib = sib.previousElementSibling;
        }
        parts.unshift(`${cur.tagName.toLowerCase()}[${idx}]`);
        cur = cur.parentElement;
      }
      return `/${parts.join('/')}`;
    };

    const nodes = Array.from(document.querySelectorAll(selector))
      .filter((node) => isVisibleForCapture(node))
      .slice(0, max);
    return nodes.map((node) => {
      const style = getComputedStyle(node);
      const rect = node.getBoundingClientRect();
      const txt = (node.textContent || '').trim().replace(/\s+/g, ' ').slice(0, 80);
      const html = (node.outerHTML || '').replace(/\s+/g, ' ').slice(0, 800);
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
        xpath: toXPath(node),
        html,
      };
    });
  }, { selector, max });
}

async function bestVisibleMatchIndex(page, selector, max = 20) {
  return await page.evaluate(({ selector, max }) => {
    const nodes = Array.from(document.querySelectorAll(selector)).slice(0, max);
    let bestIdx = -1;
    let bestScore = -1;

    for (let i = 0; i < nodes.length; i += 1) {
      const node = nodes[i];
      const style = getComputedStyle(node);
      if (style.display === 'none' || style.visibility === 'hidden') continue;
      if (Number.parseFloat(style.opacity || '1') <= 0) continue;

      const rect = node.getBoundingClientRect();
      if (!Number.isFinite(rect.width) || !Number.isFinite(rect.height)) continue;
      if (rect.width < 8 || rect.height < 8) continue;

      const textLen = (node.textContent || '').trim().length;
      const area = rect.width * rect.height;
      const score = area + Math.min(textLen, 120) * 40;
      if (score > bestScore) {
        bestScore = score;
        bestIdx = i;
      }
    }

    return bestIdx;
  }, { selector, max });
}

async function captureBestElementShot(page, selector, outputPath) {
  const bestIdx = await bestVisibleMatchIndex(page, selector);
  if (bestIdx < 0) {
    return false;
  }

  const loc = page.locator(selector).nth(bestIdx);
  try {
    await loc.scrollIntoViewIfNeeded({ timeout: 3000 });
    const box = await loc.boundingBox();
    if (!box || box.width < 8 || box.height < 8) {
      return false;
    }

    await loc.screenshot({ path: outputPath });
    if (!fs.existsSync(outputPath)) {
      return false;
    }
    const size = fs.statSync(outputPath).size;
    if (size < 512) {
      fs.rmSync(outputPath, { force: true });
      return false;
    }
    return true;
  } catch {
    return false;
  }
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

function decodeIncludeToken(sourceUrl) {
  if (!sourceUrl) return [];
  let token = '';
  try {
    const parsed = new URL(sourceUrl);
    token = parsed.searchParams.get('include') || '';
  } catch {
    return [];
  }

  if (!token) return [];
  try {
    const pad = '='.repeat((4 - (token.length % 4)) % 4);
    const b64 = token.replace(/-/g, '+').replace(/_/g, '/') + pad;
    const bytes = Buffer.from(b64, 'base64');
    const decoded = zlib.inflateSync(bytes).toString('utf8');
    return decoded
      .split(',')
      .map((s) => s.trim())
      .filter(Boolean);
  } catch {
    return [];
  }
}

function listCssFiles(root) {
  if (!fs.existsSync(root)) return [];
  const out = [];

  const walk = (dir) => {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const full = path.join(dir, entry.name);
      if (entry.isDirectory()) {
        walk(full);
      } else if (entry.isFile() && full.endsWith('.css')) {
        out.push(full);
      }
    }
  };

  walk(root);
  return out;
}

function normalizeSelector(selector) {
  return String(selector || '').replace(/\s+/g, ' ').trim();
}

function extractSelectorSet(cssText) {
  const selectors = new Set();
  const ruleRegex = /([^{}]+)\{/g;
  let match;

  while ((match = ruleRegex.exec(cssText)) !== null) {
    const raw = (match[1] || '').trim();
    if (!raw || raw.startsWith('@')) continue;

    for (const part of raw.split(',')) {
      const normalized = normalizeSelector(part);
      if (normalized) selectors.add(normalized);
    }
  }

  return selectors;
}

function isBroadSelector(selector) {
  const sel = normalizeSelector(selector);
  if (!sel) return true;
  if (broadSelectors.has(sel)) return true;
  if (/^[a-z][a-z0-9-]*$/i.test(sel)) return true;
  if (sel.length < 3) return true;
  return false;
}

const defaultAdminCssFiles = listCssFiles(defaultAdminCssRoot).map((fullPath) => ({
  fullPath,
  repoPath: fullPath.replace('/var/www/html/', ''),
  selectorSet: extractSelectorSet(fs.readFileSync(fullPath, 'utf8')),
}));

function findThemeSelectorMatches(cssSources) {
  const selectors = [...new Set((cssSources || [])
    .flatMap((m) => String(m.selector || '').split(','))
    .map((s) => normalizeSelector(s))
    .filter((s) => s && !isBroadSelector(s)))];

  const scoreByFile = new Map();
  const selectorsByFile = new Map();

  for (const sel of selectors) {
    for (const file of defaultAdminCssFiles) {
      if (file.selectorSet.has(sel)) {
        scoreByFile.set(file.repoPath, (scoreByFile.get(file.repoPath) || 0) + 1);
        if (!selectorsByFile.has(file.repoPath)) selectorsByFile.set(file.repoPath, new Set());
        selectorsByFile.get(file.repoPath).add(sel);
      }
    }
  }

  return [...scoreByFile.entries()]
    .map(([file, score]) => ({
      file,
      score,
      selectors: [...(selectorsByFile.get(file) || [])].slice(0, 4),
    }))
    .sort((a, b) => b.score - a.score || a.file.localeCompare(b.file))
    .slice(0, 8);
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

function githubElementShotUrl(relativeShotPath) {
  if (!runId || !relativeShotPath) return '';
  return `${repoWebBase}/report/${runId}/element-compare/${relativeShotPath}`;
}

function bugDraftSourceUrl(mdName) {
  if (!runId || !mdName) return '';
  return `${repoWebBase}/report/${runId}/element-compare/bug-drafts/${mdName}`;
}

function bugDraftSourceDirUrl() {
  if (!runId) return '';
  return `${repoWebBase.replace('/blob/main', '/tree/main')}/report/${runId}/element-compare/bug-drafts`;
}

function slugify(value) {
  return String(value || '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .replace(/-{2,}/g, '-');
}

function bugDraftFileName(row) {
  const routeSlug = slugify(row.route);
  const modeSlug = slugify(row.colorMode);
  const scenarioSlug = slugify(row.scenarioId || row.scenario || 'default');
  const componentSlug = slugify(row.componentId || row.component);
  return `${routeSlug}-${modeSlug}-${scenarioSlug}-${componentSlug}.md`;
}

function bugDraftHtmlFileName(row) {
  return bugDraftFileName(row).replace(/\.md$/i, '.html');
}

function legacyDefaultBugDraftFileName(row) {
  const scenarioSlug = slugify(row.scenarioId || row.scenario || 'default');
  if (scenarioSlug !== 'default') {
    return '';
  }
  const routeSlug = slugify(row.route);
  const modeSlug = slugify(row.colorMode);
  const componentSlug = slugify(row.componentId || row.component);
  return `${routeSlug}-${modeSlug}-${componentSlug}.md`;
}

function componentLegacyAliasSlugs(row) {
  const aliases = new Set([
    slugify(row.componentId || ''),
    slugify(row.component || ''),
  ].filter(Boolean));
  const componentId = slugify(row.componentId || '');

  if (componentId === 'page-title-heading') {
    ['h1', 'h2', 'page-title', 'title-heading', 'page-heading'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'required-marker') {
    ['required', 'asterisk', 'required-asterisk'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'input-text') {
    ['text-input', 'input', 'form-text'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'form-item') {
    ['form-item-wrapper', 'form-wrapper'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'label') {
    ['form-label'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'table-header') {
    ['table-header-cell', 'th'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'table-cell') {
    ['table-body-cell', 'td'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'details-summary') {
    ['details', 'summary'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'dropbutton-wrapper') {
    ['dropbutton', 'dropbutton-container'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'dropbutton-primary-action') {
    ['dropbutton-primary', 'dropbutton-action'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'dropbutton-toggle') {
    ['dropbutton-secondary-toggle', 'dropbutton-trigger'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'dropbutton-secondary-list') {
    ['dropbutton-list', 'dropbutton-items'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'dropbutton-secondary-action') {
    ['dropbutton-secondary', 'dropbutton-item'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'toolbar-structure-toggle') {
    ['toolbar-structure', 'toolbar-toggle', 'structure-toggle'].forEach((alias) => aliases.add(alias));
  } else if (componentId === 'contextual-config-trigger') {
    ['contextual-trigger', 'contextual-config', 'contextual'].forEach((alias) => aliases.add(alias));
  }

  return [...aliases];
}

function legacyAliasDraftFileNames(row) {
  const routeSlug = slugify(row.route || 'route');
  const modeSlug = slugify(row.colorMode || 'light');
  const scenarioSlug = slugify(row.scenarioId || row.scenario || 'default');
  const componentAliases = componentLegacyAliasSlugs(row);
  const names = new Set();

  for (const componentSlug of componentAliases) {
    names.add(`${routeSlug}-${modeSlug}-${scenarioSlug}-${componentSlug}.md`);
    names.add(`${routeSlug}-${scenarioSlug}-${modeSlug}-${componentSlug}.md`);
    names.add(`${routeSlug}-${modeSlug}-${componentSlug}.md`);
    if (scenarioSlug === 'default') {
      names.add(`${routeSlug}-${componentSlug}.md`);
    }
  }

  return [...names];
}

function normalizeSelector(selector) {
  return String(selector || '').replace(/\s+/g, ' ').trim();
}

function issueGroupKey(row) {
  const routeSlug = slugify(row.route || 'route');
  const scenarioSlug = slugify(row.scenarioId || row.scenario || 'default');
  const componentSlug = slugify(row.componentId || row.component || 'component');
  const selectorSlug = slugify(normalizeSelector(row.selector || '')).slice(0, 80) || 'selector';
  return `${routeSlug}|${scenarioSlug}|${componentSlug}|${selectorSlug}`;
}

function selectorHash(selector) {
  const input = normalizeSelector(selector || 'selector');
  let hash = 0;
  for (let i = 0; i < input.length; i += 1) {
    hash = ((hash << 5) - hash) + input.charCodeAt(i);
    hash |= 0;
  }
  return Math.abs(hash).toString(36).slice(0, 6) || 'sel';
}

function consolidatedBugDraftFileName(row) {
  const routeSlug = slugify(row.route);
  const scenarioSlug = slugify(row.scenarioId || row.scenario || 'default');
  const componentSlug = slugify(row.componentId || row.component);
  const selHash = selectorHash(row.selector);
  return `${routeSlug}-${scenarioSlug}-${componentSlug}-${selHash}.md`;
}

function consolidatedBugDraftHtmlFileName(row) {
  return consolidatedBugDraftFileName(row).replace(/\.md$/i, '.html');
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

function fmtPx(n) {
  if (!Number.isFinite(n)) return '0px';
  return `${Math.round(n * 10) / 10}px`;
}

function clamp(n, min, max) {
  return Math.min(max, Math.max(min, n));
}

function triageLevel(score) {
  if (score >= 75) return 'high';
  if (score >= 52) return 'medium';
  return 'low';
}

function componentImpactWeight(component) {
  const value = String(component || '').toLowerCase();
  if (!value) return 12;
  if (value.includes('button') || value.includes('input') || value.includes('field') || value.includes('link')) return 28;
  if (value.includes('title') || value.includes('heading') || value.includes('menu') || value.includes('nav')) return 24;
  if (value.includes('table') || value.includes('list') || value.includes('content')) return 20;
  if (value.includes('icon') || value.includes('badge') || value.includes('label')) return 16;
  return 14;
}

function triageMetadata(row) {
  const comparison = row.comparison || { deltas: [], significant: 0, countDeltaPct: 0 };
  const deltas = comparison.deltas || [];
  const maxAbsDelta = deltas.reduce((max, d) => Math.max(max, Math.abs(Number(d.abs) || 0)), 0);
  const significant = Number(comparison.significant) || 0;

  const impactScore = clamp(
    componentImpactWeight(row.component)
      + (significant * 10)
      + Math.min(maxAbsDelta, 90) * 0.33
      + (Math.abs(Number(comparison.countDeltaPct) || 0) >= 30 ? 8 : 0),
    0,
    100,
  );

  const hasBothSamples = (row.baseline && row.baseline.count > 0) && (row.candidate && row.candidate.count > 0);
  const hasSingleSample = (row.baseline && row.baseline.count > 0) || (row.candidate && row.candidate.count > 0);
  const selectorComplexityPenalty = /[>,+~]/.test(String(row.selector || '')) ? 10 : 0;
  const reproducibilityScore = clamp(
    (hasBothSamples ? 66 : hasSingleSample ? 40 : 20)
      + (row.scenarioId === 'default' ? 12 : 6)
      + (row.mode === 'light' || row.mode === 'dark' ? 8 : 4)
      - selectorComplexityPenalty,
    0,
    100,
  );

  const knownCssFiles = (row.likelyCssFiles || []).filter((file) => file && file !== 'unknown').length;
  const patchConfidence = row.patchSuggestion && row.patchSuggestion.confidence;
  const fixabilityScore = clamp(
    20
      + (knownCssFiles > 0 ? 30 : 0)
      + (knownCssFiles > 1 ? -6 : 0)
      + (patchConfidence === 'high' ? 44 : patchConfidence === 'medium' ? 30 : 0)
      + ((row.candidateThemeMatches || []).length ? 8 : 0),
    0,
    100,
  );

  const actionableBase = (impactScore * 0.45) + (reproducibilityScore * 0.2) + (fixabilityScore * 0.35);
  const actionableScore = clamp(Math.round(actionableBase + (significant > 0 ? 0 : -12)), 0, 100);
  return {
    impactScore,
    impactLevel: triageLevel(impactScore),
    reproducibilityScore,
    reproducibilityLevel: triageLevel(reproducibilityScore),
    fixabilityScore,
    fixabilityLevel: triageLevel(fixabilityScore),
    actionableScore,
    actionableLevel: triageLevel(actionableScore),
  };
}

function buildPatchSuggestion(row) {
  const props = [
    { key: 'fontSize', css: 'font-size', minPct: 5, maxPct: 45 },
    { key: 'lineHeight', css: 'line-height', minPct: 5, maxPct: 45 },
    { key: 'paddingY', css: 'padding-block', minPct: 8, maxPct: 60 },
    { key: 'paddingX', css: 'padding-inline', minPct: 8, maxPct: 60 },
    { key: 'height', css: 'min-height', minPct: 10, maxPct: 60 },
  ];

  const declarations = [];
  let score = 0;

  for (const prop of props) {
    const baseVal = row.baseline[prop.key];
    const candVal = row.candidate[prop.key];
    const deltaPct = pctDiff(baseVal, candVal);
    const absPct = Math.abs(deltaPct);

    if (!baseVal || !candVal) continue;
    if (absPct < prop.minPct || absPct > prop.maxPct) continue;

    declarations.push(`${prop.css}: ${fmtPx(baseVal)}; /* current ~${fmtPx(candVal)} */`);
    score += 1;
  }

  if (declarations.length === 0) {
    return null;
  }

  const cssFiles = row.likelyCssFiles || [];
  const singleFile = cssFiles.length === 1;
  const selectorHint = (row.candidateCssSources && row.candidateCssSources[0] && row.candidateCssSources[0].selector) || row.selector;

  if (singleFile) score += 1;
  if ((row.comparison.significant || 0) <= 2) score += 1;
  if (row.comparison.countFlagged) score -= 1;

  let confidence = 'low';
  if (score >= 4) confidence = 'high';
  else if (score >= 3) confidence = 'medium';

  if (confidence === 'low') {
    return null;
  }

  return {
    confidence,
    cssFile: cssFiles[0] || 'unknown',
    selectorHint,
    declarations,
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

function headingSlug(value) {
  return String(value || '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
    .replace(/-{2,}/g, '-');
}

function headingWithAnchor(level, text, options = {}) {
  const headingLevel = Math.min(6, Math.max(1, Number(level) || 2));
  const headingId = options.id || headingSlug(text) || `section-${headingLevel}`;
  const className = options.className ? ` class="${esc(options.className)}"` : '';
  const labelText = `Link to \"${text}\" section`;
  return `<h${headingLevel} id="${esc(headingId)}" tabindex="-1"${className}>${esc(text)}<a class="heading-anchor" href="#${esc(headingId)}" aria-label="${esc(labelText)}">Link to \"${esc(text)}\" section</a></h${headingLevel}>`;
}

function shouldValidateLocalLink(rawTarget) {
  if (!rawTarget) return false;
  const value = String(rawTarget).trim();
  if (!value) return false;
  if (value.startsWith('#')) return false;
  if (/^(https?:|mailto:|tel:|javascript:|data:)/i.test(value)) return false;
  return true;
}

function normalizeTargetPath(rawTarget) {
  const value = String(rawTarget || '').trim();
  return value.split('#')[0].split('?')[0];
}

function collectHtmlTargets(content) {
  const targets = [];
  const attrRegex = /(?:href|src)="([^"]+)"/g;
  let match;
  while ((match = attrRegex.exec(content)) !== null) {
    targets.push(match[1]);
  }
  return targets;
}

function collectMarkdownTargets(content) {
  const targets = [];
  const mdLinkRegex = /\[[^\]]+\]\(([^)]+)\)/g;
  let match;
  while ((match = mdLinkRegex.exec(content)) !== null) {
    targets.push(match[1]);
  }
  return targets;
}

function validateGeneratedLocalLinks(rootDir) {
  const filesToScan = [];
  const walk = (dir) => {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const fullPath = path.join(dir, entry.name);
      if (entry.isDirectory()) {
        walk(fullPath);
        continue;
      }
      if (/\.(html|md)$/i.test(entry.name)) {
        filesToScan.push(fullPath);
      }
    }
  };

  walk(rootDir);

  const missing = [];
  let checked = 0;

  for (const filePath of filesToScan) {
    const content = fs.readFileSync(filePath, 'utf8');
    const targets = filePath.endsWith('.md') ? collectMarkdownTargets(content) : collectHtmlTargets(content);
    for (const rawTarget of targets) {
      if (!shouldValidateLocalLink(rawTarget)) {
        continue;
      }
      const normalized = normalizeTargetPath(rawTarget);
      if (!normalized) {
        continue;
      }

      checked += 1;
      const resolved = path.resolve(path.dirname(filePath), normalized);
      if (!fs.existsSync(resolved)) {
        missing.push({
          source: path.relative(rootDir, filePath),
          target: rawTarget,
          resolved: path.relative(rootDir, resolved),
        });
      }
    }
  }

  return {
    scannedFiles: filesToScan.length,
    checkedTargets: checked,
    missing,
  };
}

function compactDomEvidence(measures) {
  return (measures || []).slice(0, 2).map((m) => ({
    xpath: m.xpath || '',
    html: m.html || '',
    text: m.text || '',
  }));
}

function evidenceBlockHtml(title, evidence) {
  if (!evidence || !evidence.length) {
    return `<div class="meta"><strong>${esc(title)}:</strong> no matches captured</div>`;
  }

  return evidence.map((e, i) => {
    const textLine = e.text ? `<div class="meta">text: ${esc(e.text)}</div>` : '';
    return `
      <div class="meta"><strong>${esc(title)} ${i + 1} XPath:</strong> <code>${esc(e.xpath || 'n/a')}</code></div>
      ${textLine}
      <pre>${esc(e.html || '')}</pre>`;
  }).join('');
}

function mdEscCode(s) {
  return String(s || '').replace(/```/g, '` ` `');
}

function deltaDirectionWord(delta, upWord, downWord) {
  return delta >= 0 ? upWord : downWord;
}

function deltaMagnitudeWord(absPct) {
  if (absPct < 10) return 'slightly';
  if (absPct < 35) return 'noticeably';
  return 'significantly';
}

function summarizeSingleDelta(row, key) {
  const metric = (row.comparison.deltas || []).find((d) => d.key === key);
  if (!metric) return '';

  const baseVal = row.baseline[key];
  const candVal = row.candidate[key];
  const absPct = Math.abs(metric.delta);
  const magnitude = deltaMagnitudeWord(absPct);

  if (!Number.isFinite(baseVal) || !Number.isFinite(candVal)) {
    return '';
  }

  if (key === 'fontSize') {
    const trend = deltaDirectionWord(metric.delta, 'larger', 'smaller');
    return `Text size is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }
  if (key === 'lineHeight') {
    const trend = deltaDirectionWord(metric.delta, 'larger', 'smaller');
    return `Line height is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }
  if (key === 'paddingY') {
    const trend = deltaDirectionWord(metric.delta, 'higher', 'lower');
    return `Vertical padding is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }
  if (key === 'paddingX') {
    const trend = deltaDirectionWord(metric.delta, 'higher', 'lower');
    return `Horizontal padding is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }
  if (key === 'width') {
    const trend = deltaDirectionWord(metric.delta, 'wider', 'narrower');
    return `Component width is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }
  if (key === 'height') {
    const trend = deltaDirectionWord(metric.delta, 'taller', 'shorter');
    return `Component height is ${magnitude} ${trend}: ${candVal.toFixed(1)}px vs ${baseVal.toFixed(1)}px (${metric.delta >= 0 ? '+' : ''}${metric.delta.toFixed(1)}%).`;
  }

  return '';
}

function humanReadableSummaryLines(row) {
  const deltaMap = new Map((row.comparison.deltas || []).map((d) => [d.key, d]));
  const priorities = ['fontSize', 'width', 'height', 'paddingY', 'paddingX', 'lineHeight'];
  const lines = [];

  for (const key of priorities) {
    const d = deltaMap.get(key);
    if (!d || !d.flagged) continue;
    const sentence = summarizeSingleDelta(row, key);
    if (sentence) lines.push(sentence);
  }

  if (row.comparison.countFlagged) {
    const countDelta = row.comparison.countDelta;
    const countPct = row.comparison.countDeltaPct;
    const countTrend = countDelta >= 0 ? 'more' : 'fewer';
    lines.push(`Matched element count is different: ${Math.abs(countDelta)} ${countTrend} element(s) (${countDelta >= 0 ? '+' : ''}${countPct.toFixed(1)}%).`);
  }

  if (!lines.length) {
    return ['Visual differences were detected, but no single metric crossed the reporting threshold.'];
  }

  return lines;
}

function evidenceMarkdown(title, evidence, elementShotPath, elementShotGitHub, pageShotPath, pageShotGitHub) {
  if (!evidence || !evidence.length) {
    return [`### ${title}`, '- No matching element captured', ''];
  }

  const lines = [`### ${title}`];
  evidence.forEach((e, i) => {
    lines.push(`${i + 1}. XPath: \`${e.xpath || 'n/a'}\``);
    if (e.text) {
      lines.push(`   - Text sample: ${e.text}`);
    }
    if (elementShotPath) {
      lines.push(`   - Related element screenshot: ${elementShotPath}`);
    }
    if (elementShotGitHub) {
      lines.push(`   - Related element screenshot (GitHub): ${elementShotGitHub}`);
    }
    if (pageShotPath) {
      lines.push(`   - Related page screenshot: ${pageShotPath}`);
    }
    if (pageShotGitHub) {
      lines.push(`   - Related page screenshot (GitHub): ${pageShotGitHub}`);
    }
    lines.push('');
    lines.push('```html');
    lines.push(mdEscCode(e.html || ''));
    lines.push('```');
    lines.push('');
  });
  return lines;
}

async function clearOutputDir(targetDir) {
  const maxAttempts = 6;
  for (let attempt = 1; attempt <= maxAttempts; attempt += 1) {
    try {
      fs.rmSync(targetDir, { recursive: true, force: true });
      return;
    } catch (err) {
      const retryable = err && (err.code === 'ENOTEMPTY' || err.code === 'EBUSY');
      if (!retryable || attempt === maxAttempts) {
        throw err;
      }
      await new Promise((resolve) => setTimeout(resolve, 250));
    }
  }
}

(async () => {
  await clearOutputDir(outDir);
  fs.mkdirSync(path.join(outDir, 'baseline'), { recursive: true });
  fs.mkdirSync(path.join(outDir, 'candidate'), { recursive: true });
  fs.mkdirSync(path.join(outDir, 'baseline-pages'), { recursive: true });
  fs.mkdirSync(path.join(outDir, 'candidate-pages'), { recursive: true });

  const browser = await chromium.launch({ headless: true });

  const baselineCtx = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
  const candidateCtx = await browser.newContext({ viewport: { width: 1440, height: 1024 } });

  const baselinePage = await baselineCtx.newPage();
  const candidatePage = await candidateCtx.newPage();

  await login(baselinePage, baselineUrl);
  await login(candidatePage, candidateUrl);

  const rows = [];

  for (const route of routes) {
    const profiles = route.settingsProfiles ? settingsProfiles : [defaultSettingsProfile];
    for (const scheme of schemes) {
      for (const profile of profiles) {
        const baselinePath = route.baselinePath || route.path;
        const candidatePath = route.candidatePath || route.path;

        await baselinePage.emulateMedia({ colorScheme: scheme });
        await candidatePage.emulateMedia({ colorScheme: scheme });
        const baselineResponse = await baselinePage.goto(`${baselineUrl}${baselinePath}`, { waitUntil: 'networkidle' });
        const candidateResponse = await candidatePage.goto(`${candidateUrl}${candidatePath}`, { waitUntil: 'networkidle' });
        await assertRouteAccessible(baselinePage, `${baselineUrl}${baselinePath}`, baselineLabel, baselineResponse);
        await assertRouteAccessible(candidatePage, `${candidateUrl}${candidatePath}`, candidateLabel, candidateResponse);

        const baselineStatus = baselineResponse ? baselineResponse.status() : 0;
        const candidateStatus = candidateResponse ? candidateResponse.status() : 0;
        if (baselineStatus >= 400 || candidateStatus >= 400) {
          console.warn(`Skipping ${route.label} [${profile.label}] ${scheme} due to HTTP status baseline=${baselineStatus} candidate=${candidateStatus}`);
          continue;
        }

        if (route.settingsProfiles) {
          await applyThemeSettingsProfile(baselinePage, profile);
          await applyThemeSettingsProfile(candidatePage, profile);
        }

        await expandDropbuttons(baselinePage);
        await expandDropbuttons(candidatePage);

        const pageShotBase = `${route.id}__${profile.id}__${scheme}__page.png`;
        const baselinePageShot = `baseline-pages/${pageShotBase}`;
        const candidatePageShot = `candidate-pages/${pageShotBase}`;
        try {
          await baselinePage.screenshot({ path: path.join(outDir, baselinePageShot), fullPage: true });
        } catch {
          // Skip non-actionable baseline page screenshot.
        }
        try {
          await candidatePage.screenshot({ path: path.join(outDir, candidatePageShot), fullPage: true });
        } catch {
          // Skip non-actionable candidate page screenshot.
        }

        for (const component of components) {
        const baseMeasures = await measure(baselinePage, component.selector);
        const candMeasures = await measure(candidatePage, component.selector);
        const baseCssSources = await collectCssSources(baselinePage, component.selector);
        const candCssSources = await collectCssSources(candidatePage, component.selector);

        const baseSummary = summarize(baseMeasures);
        const candSummary = summarize(candMeasures);
        const comparison = compareStats(baseSummary, candSummary);
        const themeMatches = findThemeSelectorMatches(candCssSources);
        const aggregateLibraries = [...new Set((candCssSources || []).flatMap((m) => decodeIncludeToken(m.source || '')))].sort();
        const runtimeLikelyCss = likelyCssFiles(baseCssSources, candCssSources);
        const likelyCss = themeMatches.length ? themeMatches.map((m) => m.file) : runtimeLikelyCss.slice(0, 5);

        const fileBase = `${route.id}__${profile.id}__${scheme}__${component.id}`;
        const baselineShot = `baseline/${fileBase}.png`;
        const candidateShot = `candidate/${fileBase}.png`;

        await captureBestElementShot(baselinePage, component.selector, path.join(outDir, baselineShot));
        await captureBestElementShot(candidatePage, component.selector, path.join(outDir, candidateShot));

        const row = {
          route: route.label,
          routePath: baselinePath,
          baselineRoutePath: baselinePath,
          candidateRoutePath: candidatePath,
          scenario: profile.label,
          scenarioId: profile.id,
          colorMode: scheme,
          baselineUrl: `${baselineReportUrl}${baselinePath}`,
          candidateUrl: `${candidateReportUrl}${candidatePath}`,
          component: component.label,
          componentId: component.id,
          selector: component.selector,
          baseline: baseSummary,
          candidate: candSummary,
          comparison,
          baselineCssSources: baseCssSources,
          candidateCssSources: candCssSources,
          candidateThemeMatches: themeMatches,
          candidateAggregateLibraries: aggregateLibraries,
          likelyCssFiles: likelyCss,
          baselineShot: fs.existsSync(path.join(outDir, baselineShot)) ? baselineShot : '',
          candidateShot: fs.existsSync(path.join(outDir, candidateShot)) ? candidateShot : '',
          baselinePageShot: fs.existsSync(path.join(outDir, baselinePageShot)) ? baselinePageShot : '',
          candidatePageShot: fs.existsSync(path.join(outDir, candidatePageShot)) ? candidatePageShot : '',
          baselineDomEvidence: compactDomEvidence(baseMeasures),
          candidateDomEvidence: compactDomEvidence(candMeasures),
        };

        row.patchSuggestion = buildPatchSuggestion(row);
        rows.push(row);
      }
      }
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
  const uniqueRouteCount = new Set(rows.map((r) => r.route)).size;
  const uniqueModeCount = new Set(rows.map((r) => r.colorMode)).size;
  const uniqueScenarioCount = new Set(rows.map((r) => r.scenarioId || 'default')).size;
  const routeModeCombos = uniqueRouteCount * uniqueModeCount;
  const routeModeScenarioCombos = new Set(rows.map((r) => `${r.route}|${r.colorMode}|${r.scenarioId || 'default'}`)).size;

  const flaggedRows = rows.filter((r) => r.comparison.significant > 0);
  const groupedFlagged = new Map();
  for (const row of flaggedRows) {
    const key = issueGroupKey(row);
    if (!groupedFlagged.has(key)) {
      groupedFlagged.set(key, []);
    }
    groupedFlagged.get(key).push(row);
  }

  const confidenceRank = { high: 3, medium: 2, low: 1 };
  const consolidatedIssues = Array.from(groupedFlagged.values()).map((groupRows) => {
    const sortedRows = groupRows.slice().sort((a, b) => {
      const aLight = String(a.colorMode || '').toLowerCase() === 'light' ? 1 : 0;
      const bLight = String(b.colorMode || '').toLowerCase() === 'light' ? 1 : 0;
      return bLight - aLight;
    });
    const primaryRow = sortedRows[0];
    const modeSet = new Set(sortedRows.map((r) => String(r.colorMode || '').toLowerCase()));

    const cssSet = new Set();
    sortedRows.forEach((r) => {
      (r.likelyCssFiles || []).forEach((cssFile) => {
        if (cssFile) {
          cssSet.add(cssFile);
        }
      });
    });
    if (!cssSet.size) {
      cssSet.add('unknown');
    }

    const allSuggestions = sortedRows
      .map((r) => r.patchSuggestion)
      .filter(Boolean)
      .sort((a, b) => (confidenceRank[b.confidence] || 0) - (confidenceRank[a.confidence] || 0));

    return {
      key: issueGroupKey(primaryRow),
      rows: sortedRows,
      primaryRow,
      modes: Array.from(modeSet),
      modeLabel: Array.from(modeSet).sort().join(' + '),
      mergedCssList: Array.from(cssSet),
      mergedPatchSuggestion: allSuggestions[0] || null,
      mdName: consolidatedBugDraftFileName(primaryRow),
      htmlName: consolidatedBugDraftHtmlFileName(primaryRow),
    };
  });

  const draftNameByGroupKey = new Map(consolidatedIssues.map((issue) => [issue.key, issue.mdName]));
  const draftHtmlByGroupKey = new Map(consolidatedIssues.map((issue) => [issue.key, issue.htmlName]));
  const expectedDraftNames = new Set(consolidatedIssues.map((issue) => issue.mdName));
  const legacyAliasTargetByName = new Map();

  const rowHtml = rows.map((row) => {
    const sig = row.comparison.significant;
    const className = sig > 0 ? 'flagged' : '';
    const triage = triageMetadata(row);
    const draftMdName = sig > 0 ? (draftNameByGroupKey.get(issueGroupKey(row)) || bugDraftFileName(row)) : '';
    const draftHtmlName = sig > 0 ? (draftHtmlByGroupKey.get(issueGroupKey(row)) || bugDraftHtmlFileName(row)) : '';
    const draftLegacyMdName = sig > 0 ? legacyDefaultBugDraftFileName(row) : '';
    const draftLegacyHtmlName = draftLegacyMdName ? draftLegacyMdName.replace(/\.md$/i, '.html') : '';
    const draftSource = draftMdName ? bugDraftSourceUrl(draftMdName) : '';
    const draftDirSource = bugDraftSourceDirUrl();
    const draftExists = draftMdName ? expectedDraftNames.has(draftMdName) : false;
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
    const baselineEvidence = evidenceBlockHtml('Baseline', row.baselineDomEvidence || []);
    const candidateEvidence = evidenceBlockHtml('Candidate', row.candidateDomEvidence || []);

    return `
      <tr class="${className}" data-route="${esc(row.route)}" data-component="${esc(row.component)}" data-significant="${sig > 0 ? 'yes' : 'no'}" data-css="${esc(cssKey)}" data-mode="${esc(row.colorMode)}" data-impact="${esc(triage.impactLevel)}" data-repro="${esc(triage.reproducibilityLevel)}" data-fix="${esc(triage.fixabilityLevel)}" data-actionable="${triage.actionableScore}">
        <td>
          <div><strong>${esc(row.route)}</strong></div>
          <div class="meta"><strong>Scenario:</strong> ${esc(row.scenario || 'Default')}</div>
          <div class="meta"><strong>Mode:</strong> ${esc(row.colorMode)}</div>
          <div class="meta"><strong>Triage:</strong> Impact ${esc(triage.impactLevel.toUpperCase())} (${triage.impactScore}) | Repeatability ${esc(triage.reproducibilityLevel.toUpperCase())} (${triage.reproducibilityScore}) | Fixability ${esc(triage.fixabilityLevel.toUpperCase())} (${triage.fixabilityScore}) | Actionability ${triage.actionableScore}</div>
          <div>${esc(row.component)}</div>
          <div class="meta"><a href="${esc(row.baselineUrl)}" target="_blank" rel="noopener">${esc(baselineLabel)} URL</a></div>
          <div class="meta"><a href="${esc(row.candidateUrl)}" target="_blank" rel="noopener">${esc(candidateLabel)} URL</a></div>
          <div class="meta">${esc(row.selector)}</div>
          <div class="meta"><strong>Likely CSS:</strong> ${cssMeta}</div>
          ${draftMdName ? `<div class="meta"><strong>Draft Issue:</strong> ${draftExists ? `<a href="bug-drafts/${esc(draftHtmlName)}" target="_blank" rel="noopener">Open rendered draft (HTML)</a>` : '<span>Local draft missing</span>'}${draftSource ? ` | <a href="${esc(draftSource)}" target="_blank" rel="noopener">GitHub Source (Markdown)</a>` : ''}${draftLegacyHtmlName ? ` | <a href="bug-drafts/${esc(draftLegacyHtmlName)}" target="_blank" rel="noopener">Legacy URL</a>` : ''}${draftDirSource ? ` | <a href="${esc(draftDirSource)}" target="_blank" rel="noopener">All Drafts (GitHub)</a>` : ''}</div>` : ''}
          <details>
            <summary>XPath and HTML snippets</summary>
            ${baselineEvidence}
            ${candidateEvidence}
          </details>
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
          <div class="meta"><strong>Issue candidate:</strong> ${sig > 0 && triage.impactLevel === 'high' && triage.reproducibilityLevel === 'high' && (triage.fixabilityLevel === 'high' || triage.fixabilityLevel === 'medium') ? 'Likely yes' : 'Needs more review'}</div>
        </td>
      </tr>`;
  }).join('');

  const routeLinksHtml = routes.map((r) => {
    const bPath = r.baselinePath || r.path;
    const cPath = r.candidatePath || r.path;
    const b = `${baselineReportUrl}${bPath}`;
    const c = `${candidateReportUrl}${cPath}`;
    const displayPath = bPath === cPath ? bPath : `${bPath} -> ${cPath}`;
    return `<tr><td>${esc(r.label)}</td><td>${esc(displayPath)}</td><td><a href="${esc(b)}" target="_blank" rel="noopener">${esc(b)}</a></td><td><a href="${esc(c)}" target="_blank" rel="noopener">${esc(c)}</a></td></tr>`;
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
  .controls { display: grid; grid-template-columns: repeat(10, minmax(140px, 1fr)); gap: 8px; margin-bottom: 14px; }
  select, input { padding: 8px; border: 1px solid #bcccdc; border-radius: 6px; }
  table { width: 100%; border-collapse: collapse; background: #fff; }
  th, td { border: 1px solid #d9e2ec; padding: 8px; vertical-align: top; }
  th { background: #e6edf5; text-align: left; }
  tr.flagged { background: #fff7e6; }
  .meta { font-size: 12px; color: #52606d; margin-top: 4px; }
  details { margin-top: 8px; }
  summary { cursor: pointer; color: #243b53; font-weight: 600; }
  pre { white-space: pre-wrap; overflow-wrap: anywhere; background: #f8fafc; border: 1px solid #d9e2ec; border-radius: 4px; padding: 6px; font-size: 11px; color: #102a43; }
  code { font-size: 11px; }
  img { max-width: 100%; border: 1px solid #cbd2d9; margin-top: 6px; }
  .agg { margin-bottom: 16px; }
  .agg table { width: auto; min-width: 420px; }
</style>
</head>
<body>
<header>
  <div><strong>System-Wide Element Comparison Dashboard</strong></div>
  <div class="sub">${esc(data.baselineLabel)} vs ${esc(data.candidateLabel)} | Generated: ${esc(data.generatedAt)} | Routes: ${uniqueRouteCount} | Modes: ${uniqueModeCount} | Scenarios: ${uniqueScenarioCount} | Route x Mode: ${routeModeCombos} | Route x Mode x Scenario: ${routeModeScenarioCombos}</div>
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
    <div class="meta">Configured routes: ${uniqueRouteCount}; generated route/mode combinations: ${routeModeCombos}.</div>
    <table>
      <thead><tr><th>Section</th><th>Route</th><th>${esc(baselineLabel)}</th><th>${esc(candidateLabel)}</th></tr></thead>
      <tbody>${routeLinksHtml}</tbody>
    </table>
  </section>

  <section>
    <h2>Detailed Element Comparison</h2>
    <div class="meta" style="margin-bottom:8px;">Tip: choose <strong>Issue candidates</strong> to focus on high-impact, easy-to-repeat, likely-fixable regressions.</div>
    <div class="controls">
      <input id="textFilter" placeholder="Search route/component/selector" />
      <select id="routeFilter"><option value="">All routes</option></select>
      <select id="componentFilter"><option value="">All components</option></select>
      <select id="signalFilter">
        <option value="">All rows</option>
        <option value="yes">Only flagged rows</option>
      </select>
      <select id="modeFilter"><option value="">All modes</option></select>
      <select id="cssFilter"><option value="">All CSS files</option></select>
      <select id="triagePreset">
        <option value="">All triage presets</option>
        <option value="issue-candidate">Issue candidates (high impact + easy repeat + fixable)</option>
        <option value="quick-win">Quick wins (fixability high + repeatability high)</option>
        <option value="high-impact">High impact only</option>
      </select>
      <select id="impactFilter"><option value="">All impact levels</option></select>
      <select id="reproFilter"><option value="">All repeatability levels</option></select>
      <select id="fixFilter"><option value="">All fixability levels</option></select>
      <select id="sortOrder">
        <option value="route">Sort: Route</option>
        <option value="component">Sort: Component</option>
        <option value="css">Sort: CSS source</option>
        <option value="flagged">Sort: Flagged first</option>
        <option value="actionable">Sort: Triage score (high to low)</option>
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
  const modeFilter = document.getElementById('modeFilter');
  const cssFilter = document.getElementById('cssFilter');
  const triagePreset = document.getElementById('triagePreset');
  const impactFilter = document.getElementById('impactFilter');
  const reproFilter = document.getElementById('reproFilter');
  const fixFilter = document.getElementById('fixFilter');
  const sortOrder = document.getElementById('sortOrder');
  const textFilter = document.getElementById('textFilter');

  const routes = [...new Set(rows.map(r => r.dataset.route))].sort();
  const components = [...new Set(rows.map(r => r.dataset.component))].sort();
  const modes = [...new Set(rows.map(r => r.dataset.mode || 'light'))].sort();
  const cssSources = [...new Set(rows.map(r => r.dataset.css || 'unknown'))].sort();
  const triageLevels = ['high', 'medium', 'low'];

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
  for (const mode of modes) {
    const opt = document.createElement('option');
    opt.value = mode; opt.textContent = mode;
    modeFilter.appendChild(opt);
  }
  for (const css of cssSources) {
    const opt = document.createElement('option');
    opt.value = css; opt.textContent = css;
    cssFilter.appendChild(opt);
  }
  for (const level of triageLevels) {
    const impactOpt = document.createElement('option');
    impactOpt.value = level;
    impactOpt.textContent = level.toUpperCase();
    impactFilter.appendChild(impactOpt);

    const reproOpt = document.createElement('option');
    reproOpt.value = level;
    reproOpt.textContent = level.toUpperCase();
    reproFilter.appendChild(reproOpt);

    const fixOpt = document.createElement('option');
    fixOpt.value = level;
    fixOpt.textContent = level.toUpperCase();
    fixFilter.appendChild(fixOpt);
  }

  function sortRows(order) {
    const get = (r, key) => (r.dataset[key] || '').toLowerCase();
    const getNum = (r, key) => Number(r.dataset[key] || 0);
    const sorted = [...rows].sort((a, b) => {
      if (order === 'component') return get(a, 'component').localeCompare(get(b, 'component'));
      if (order === 'css') return get(a, 'css').localeCompare(get(b, 'css'));
      if (order === 'flagged') return get(b, 'significant').localeCompare(get(a, 'significant'));
      if (order === 'actionable') return getNum(b, 'actionable') - getNum(a, 'actionable');
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
    const mode = modeFilter.value;
    const css = cssFilter.value;
    const preset = triagePreset.value;
    const impact = impactFilter.value;
    const repro = reproFilter.value;
    const fix = fixFilter.value;
    const txt = textFilter.value.toLowerCase().trim();

    for (const row of rows) {
      const matchesRoute = !route || row.dataset.route === route;
      const matchesComp = !comp || row.dataset.component === comp;
      const matchesSig = !sig || row.dataset.significant === sig;
      const matchesMode = !mode || row.dataset.mode === mode;
      const matchesCss = !css || row.dataset.css === css;
      const matchesImpact = !impact || row.dataset.impact === impact;
      const matchesRepro = !repro || row.dataset.repro === repro;
      const matchesFix = !fix || row.dataset.fix === fix;

      let matchesPreset = true;
      const actionable = Number(row.dataset.actionable || 0);
      if (preset === 'issue-candidate') {
        matchesPreset = row.dataset.significant === 'yes' && row.dataset.impact === 'high' && row.dataset.repro === 'high' && row.dataset.fix === 'high' && actionable >= 78;
      } else if (preset === 'quick-win') {
        matchesPreset = row.dataset.significant === 'yes' && row.dataset.fix === 'high' && row.dataset.repro === 'high' && actionable >= 72;
      } else if (preset === 'high-impact') {
        matchesPreset = row.dataset.significant === 'yes' && row.dataset.impact === 'high' && actionable >= 68;
      }

      const matchesTxt = !txt || row.textContent.toLowerCase().includes(txt);
      row.style.display = (matchesRoute && matchesComp && matchesSig && matchesMode && matchesCss && matchesImpact && matchesRepro && matchesFix && matchesPreset && matchesTxt) ? '' : 'none';
    }

    sortRows(sortOrder.value);
  }

  routeFilter.addEventListener('change', applyFilters);
  componentFilter.addEventListener('change', applyFilters);
  signalFilter.addEventListener('change', applyFilters);
  modeFilter.addEventListener('change', applyFilters);
  cssFilter.addEventListener('change', applyFilters);
  triagePreset.addEventListener('change', applyFilters);
  impactFilter.addEventListener('change', applyFilters);
  reproFilter.addEventListener('change', applyFilters);
  fixFilter.addEventListener('change', applyFilters);
  sortOrder.addEventListener('change', applyFilters);
  textFilter.addEventListener('input', applyFilters);
  applyFilters();
</script>
</body>
</html>`;

  fs.writeFileSync(path.join(outDir, 'element-compare-dashboard.html'), html);

  const bugDraftDir = path.join(outDir, 'bug-drafts');
  fs.mkdirSync(bugDraftDir, { recursive: true });

  const csvLines = ['id,title,route,color_mode,component,selector,baseline_url,candidate_url,key_deltas,likely_css_files,baseline_css_sources,candidate_css_sources,suggested_patch_confidence,suggested_css_selector,suggested_declarations,baseline_xpath,baseline_html_snippet,candidate_xpath,candidate_html_snippet,evidence_baseline,evidence_candidate'];
  const indexLines = [
    '# Draft Bug Reports',
    '',
    `Generated: ${new Date().toISOString()}`,
    '',
    `Baseline: ${baselineLabel}`,
    `Candidate: ${candidateLabel}`,
    runId ? `Run: ${runId}` : '',
    runId ? `Dashboard: ${repoWebBase.replace('/blob/main', '')}/report/${runId}/element-compare/element-compare-dashboard.html` : '',
    '',
  ].filter(Boolean);
  const htmlIndexRows = [];
  const cssBuckets = {};
  const patchLines = ['# Suggested CSS Patch Ideas', '', `Generated: ${new Date().toISOString()}`, '', 'Only medium/high confidence suggestions are included.', ''];
  const patchBuckets = {};

  const metricLabels = {
    fontSize: 'font size',
    lineHeight: 'line height',
    paddingY: 'vertical padding',
    paddingX: 'horizontal padding',
    width: 'width',
    height: 'height',
  };

  const metricPriorityWeight = {
    fontSize: 3.2,
    lineHeight: 2.6,
    paddingY: 2.6,
    paddingX: 2.0,
    height: 1.8,
    width: 1.0,
  };

  const normalizeToken = (value) => String(value || '').toLowerCase().trim();
  const componentToken = (component) => normalizeToken(component).replace(/\s+/g, '-');
  const labelFromValue = (value) => {
    if (value === undefined || value === null) {
      return '';
    }
    return String(value).trim();
  };

  const componentFrequency = new Map();
  const routeComponentFrequency = new Map();
  const routeComponentModes = new Map();

  for (const issue of consolidatedIssues) {
    const row = issue.primaryRow;
    const compKey = componentToken(row.component);
    const routeCompKey = `${normalizeToken(row.route)}::${compKey}`;
    componentFrequency.set(compKey, (componentFrequency.get(compKey) || 0) + 1);
    routeComponentFrequency.set(routeCompKey, (routeComponentFrequency.get(routeCompKey) || 0) + 1);
    if (!routeComponentModes.has(routeCompKey)) {
      routeComponentModes.set(routeCompKey, new Set());
    }
    for (const mode of issue.modes) {
      routeComponentModes.get(routeCompKey).add(normalizeToken(mode));
    }
  }

  function componentVisibilityWeight(component) {
    const comp = normalizeToken(component);
    if (/(button|input|select|textarea|checkbox|radio|switch|toggle|submit|required|label|field)/.test(comp)) return 18;
    if (/(heading|title|h1|h2|h3|link|breadcrumb|menu|nav|tab|pager|table-header|table-cell|table-row)/.test(comp)) return 14;
    if (/(message|alert|notice|status|description|help|summary)/.test(comp)) return 11;
    return 8;
  }

  function priorityScoreForIssue(issue, suggestion, cssList) {
    const row = issue.primaryRow;
    let score = 0;
    const reasons = [];
    const caveats = [];

    const compLabel = labelFromValue(row.component) || 'component';
    const compKey = componentToken(compLabel);
    const routeCompKey = `${normalizeToken(row.route)}::${compKey}`;
    const compCount = componentFrequency.get(compKey) || 1;
    const routeCompCount = routeComponentFrequency.get(routeCompKey) || 1;
    const modeSpread = Math.max(issue.modes.length, (routeComponentModes.get(routeCompKey) || new Set()).size);

    const commonnessScore = Math.min(26, Math.max(0, compCount - 1) * 4 + Math.max(0, routeCompCount - 1) * 3 + Math.max(0, modeSpread - 1) * 3);
    if (commonnessScore > 0) {
      score += commonnessScore;
      reasons.push(`Commonly found: ${compCount} similar ${compLabel} diffs (${routeCompCount} on this route).`);
    }

    const visibilityBase = componentVisibilityWeight(compLabel);
    score += visibilityBase;
    reasons.push(`Easily visible surface: ${compLabel}.`);

    const flaggedDeltas = (row.comparison.deltas || []).filter((d) => d.flagged);
    let metricScore = 0;
    for (const delta of flaggedDeltas) {
      const weight = metricPriorityWeight[delta.key] || 1;
      metricScore += Math.min(14, (Math.abs(delta.abs) / 10) * weight);
    }
    if (metricScore > 0) {
      score += metricScore;
      const topSignals = flaggedDeltas
        .slice()
        .sort((a, b) => b.abs - a.abs)
        .slice(0, 2)
        .map((d) => `${metricLabels[d.key] || d.key} (${d.delta >= 0 ? '+' : ''}${d.delta.toFixed(1)}%)`)
        .join(' and ');
      reasons.push(`Visible metric shift: ${topSignals}.`);
    }

    if (row.comparison.countFlagged) {
      score += 4;
    }

    if (suggestion) {
      const patchBonus = suggestion.confidence === 'high' ? 20 : 14;
      score += patchBonus;
      reasons.push(`Potential patch to review: ${suggestion.confidence} confidence suggestion.`);
    }

    if (cssList.length === 1 && cssList[0] !== 'unknown') {
      score += 4;
    }

    if (cssList[0] === 'unknown') {
      score -= 10;
      caveats.push('Likely CSS source is unknown.');
    }

    if (flaggedDeltas.length === 1 && flaggedDeltas[0].key === 'width') {
      score -= 6;
      caveats.push('Width-only change may be less obvious in quick review.');
    }

    if (row.comparison.countFlagged && Math.abs(row.comparison.countDeltaPct) >= 95 && visibilityBase < 14) {
      score -= 6;
      caveats.push('Large count change may be selector noise; confirm before patching.');
    }

    const roundedScore = Math.max(0, Math.round(score));
    const priorityLevel = roundedScore >= 60 ? 'high' : roundedScore >= 38 ? 'medium' : 'low';

    return {
      score: roundedScore,
      level: priorityLevel,
      reasons: reasons.slice(0, 3),
      caveats: caveats.slice(0, 2),
    };
  }

  function flaggedDeltaList(sourceRow) {
    const items = [];
    for (const d of sourceRow.comparison.deltas) {
      if (d.flagged) {
        items.push(`${d.key}: ${d.delta.toFixed(1)}%`);
      }
    }
    if (sourceRow.comparison.countFlagged) {
      items.push(`count: ${sourceRow.comparison.countDelta > 0 ? '+' : ''}${sourceRow.comparison.countDelta} (${sourceRow.comparison.countDeltaPct.toFixed(1)}%)`);
    }
    return items;
  }

  let idx = 1;
  for (const issue of consolidatedIssues) {
    const row = issue.primaryRow;
    const title = `Admin Theme (${issue.modeLabel}) ${row.route} - ${row.component} style regression vs Drupal 11 Gin`;
    const modeDeltaSummaries = issue.rows.map((modeRow) => {
      const modeDeltas = flaggedDeltaList(modeRow);
      const modeName = String(modeRow.colorMode || '').toLowerCase() || 'unknown';
      return `${modeName}: ${modeDeltas.length ? modeDeltas.join(' | ') : 'Significant visual difference observed'}`;
    });
    const deltas = modeDeltaSummaries.length > 1 ? modeDeltaSummaries : flaggedDeltaList(row);

    const mdName = issue.mdName;
    const htmlName = issue.htmlName;
    const mdPath = path.join(bugDraftDir, mdName);
    const htmlPath = path.join(bugDraftDir, htmlName);
    const cssList = (issue.mergedCssList && issue.mergedCssList.length) ? issue.mergedCssList : ['unknown'];
    const baselineCssList = cssSourceList(row.baselineCssSources || []);
    const candidateCssList = cssSourceList(row.candidateCssSources || []);
    const suggestion = issue.mergedPatchSuggestion;
    const baselineEvidence = row.baselineDomEvidence || [];
    const candidateEvidence = row.candidateDomEvidence || [];
    const baselinePrimary = baselineEvidence[0] || {};
    const candidatePrimary = candidateEvidence[0] || {};

    const baselineShotGitHub = githubElementShotUrl(row.baselineShot);
    const candidateShotGitHub = githubElementShotUrl(row.candidateShot);
    const baselinePageShotGitHub = githubElementShotUrl(row.baselinePageShot);
    const candidatePageShotGitHub = githubElementShotUrl(row.candidatePageShot);
    const humanSummaryLines = [...humanReadableSummaryLines(row)];
    if (issue.modes.includes('light') && issue.modes.includes('dark')) {
      humanSummaryLines.push('This same issue was also identified in dark mode.');
    }
    const modeCoverageLines = issue.rows.map((modeRow) => {
      const modeDeltas = flaggedDeltaList(modeRow);
      const modeName = String(modeRow.colorMode || '').toLowerCase() || 'unknown';
      return `- ${modeName}: ${modeDeltas.length ? modeDeltas.join(' | ') : 'Significant visual difference observed'}`;
    });

    const body = [
      `# ${title}`,
      '',
      '## Human-Readable Change Summary',
      ...humanSummaryLines.map((line) => `- ${line}`),
      '',
      '## Summary',
      `Potential CSS regression in **${row.component}** on **${row.route}** when comparing ${baselineLabel} to ${candidateLabel}.`,
      `Color mode coverage: **${issue.modeLabel}**`,
      '',
      '## Color Mode Coverage',
      ...modeCoverageLines,
      '',
      '## Steps To Reproduce',
      `1. Open baseline page: ${row.baselineUrl}`,
      `2. Open candidate page: ${row.candidateUrl}`,
      `3. Inspect selector: ${row.selector}`,
      `4. Compare typography, spacing, sizing, and marker presence in: ${issue.modeLabel}.`,
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
      '## Candidate Theme Source Matches (default_admin)',
      (row.candidateThemeMatches || []).length
        ? (row.candidateThemeMatches || []).map((m) => `- ${m.file} (score: ${m.score}; selectors: ${m.selectors.join(', ') || 'n/a'})`).join('\n')
        : '- No direct selector match found under core/themes/default_admin/css',
      '',
      '## Candidate Aggregate Libraries (decoded include= token)',
      (row.candidateAggregateLibraries || []).length ? (row.candidateAggregateLibraries || []).map((m) => `- ${m}`).join('\n') : '- No aggregate library list decoded',
      '',
      '## Suggested CSS Patch (Confidence-Gated)',
      suggestion
        ? [`Confidence: **${suggestion.confidence}**`, '', '```css', `${suggestion.selectorHint} {`, ...suggestion.declarations.map((d) => `  ${d}`), '}', '```'].join('\n')
        : 'No high-confidence automatic patch suggestion for this diff.',
      '',
      '## Evidence',
      `- Baseline element screenshot: ${row.baselineShot}`,
      `- Candidate element screenshot: ${row.candidateShot}`,
      `- Baseline page screenshot: ${row.baselinePageShot || 'n/a'}`,
      `- Candidate page screenshot: ${row.candidatePageShot || 'n/a'}`,
      baselineShotGitHub ? `- Baseline element screenshot (GitHub): ${baselineShotGitHub}` : '',
      candidateShotGitHub ? `- Candidate element screenshot (GitHub): ${candidateShotGitHub}` : '',
      baselinePageShotGitHub ? `- Baseline page screenshot (GitHub): ${baselinePageShotGitHub}` : '',
      candidatePageShotGitHub ? `- Candidate page screenshot (GitHub): ${candidatePageShotGitHub}` : '',
      '- Dashboard: ../element-compare-dashboard.html',
      '',
      '## DOM Evidence (XPath + HTML Snippets)',
      ...evidenceMarkdown(`${baselineLabel}`, baselineEvidence, row.baselineShot, baselineShotGitHub, row.baselinePageShot, baselinePageShotGitHub),
      ...evidenceMarkdown(`${candidateLabel}`, candidateEvidence, row.candidateShot, candidateShotGitHub, row.candidatePageShot, candidatePageShotGitHub),
      '## Notes',
      '- Validate whether this is planned design change or unplanned regression.',
      '- If unplanned, file as CSS parity issue for Drupal 12 Admin Theme.',
      '',
    ].join('\n');

    fs.writeFileSync(mdPath, body);

    const htmlTitle = esc(title);
    const baselineEvidenceHtml = evidenceBlockHtml(`${baselineLabel}`, baselineEvidence);
    const candidateEvidenceHtml = evidenceBlockHtml(`${candidateLabel}`, candidateEvidence);
    const renderedHtml = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>${htmlTitle}</title>
<style>
  body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; margin: 2rem auto; max-width: 1100px; padding: 0 1rem; line-height: 1.45; }
  h1 { margin-bottom: 0.4rem; }
  .meta { color: #4a5568; }
  .links a { margin-right: 0.8rem; }
  .card { border: 1px solid #d0d7de; border-radius: 8px; padding: 0.8rem 1rem; margin: 0.9rem 0; }
  pre { white-space: pre-wrap; overflow-wrap: anywhere; background: #f6f8fa; border: 1px solid #d0d7de; border-radius: 6px; padding: 0.7rem; }
  code { font-size: 0.95em; }
  img { max-width: 100%; border: 1px solid #d0d7de; border-radius: 4px; margin-top: 0.5rem; }
  ul { margin-top: 0.4rem; }
</style>
</head>
<body>
  <h1>${htmlTitle}</h1>
  <p class="meta">Potential CSS regression in <strong>${esc(row.component)}</strong> on <strong>${esc(row.route)}</strong> (modes: ${esc(issue.modeLabel)}).</p>
  <p class="links">
    <a href="${esc(mdName)}" target="_blank" rel="noopener">Local Markdown</a>
    ${bugDraftSourceUrl(mdName) ? `<a href="${esc(bugDraftSourceUrl(mdName))}" target="_blank" rel="noopener">GitHub Source (Markdown)</a>` : ''}
    <a href="../element-compare-dashboard.html" target="_blank" rel="noopener">Dashboard</a>
  </p>

  <section class="card">
    <h2>What Changed (Human Summary)</h2>
    <ul>
      ${humanSummaryLines.map((line) => `<li>${esc(line)}</li>`).join('')}
    </ul>
  </section>

  <section class="card">
    <h2>Reproduction</h2>
    <ol>
      <li>Open baseline page: <a href="${esc(row.baselineUrl)}" target="_blank" rel="noopener">${esc(row.baselineUrl)}</a></li>
      <li>Open candidate page: <a href="${esc(row.candidateUrl)}" target="_blank" rel="noopener">${esc(row.candidateUrl)}</a></li>
      <li>Inspect selector: <code>${esc(row.selector)}</code></li>
      <li>Compare typography, spacing, sizing, and marker presence in ${esc(issue.modeLabel)}.</li>
    </ol>
  </section>

  <section class="card">
    <h2>Screenshots</h2>
    <ul>
      <li>Baseline element: ${row.baselineShot ? `<a href="../${esc(row.baselineShot)}" target="_blank" rel="noopener">${esc(row.baselineShot)}</a>` : 'n/a'} ${baselineShotGitHub ? `| <a href="${esc(baselineShotGitHub)}" target="_blank" rel="noopener">GitHub</a>` : ''}</li>
      <li>Candidate element: ${row.candidateShot ? `<a href="../${esc(row.candidateShot)}" target="_blank" rel="noopener">${esc(row.candidateShot)}</a>` : 'n/a'} ${candidateShotGitHub ? `| <a href="${esc(candidateShotGitHub)}" target="_blank" rel="noopener">GitHub</a>` : ''}</li>
      <li>Baseline page: ${row.baselinePageShot ? `<a href="../${esc(row.baselinePageShot)}" target="_blank" rel="noopener">${esc(row.baselinePageShot)}</a>` : 'n/a'} ${baselinePageShotGitHub ? `| <a href="${esc(baselinePageShotGitHub)}" target="_blank" rel="noopener">GitHub</a>` : ''}</li>
      <li>Candidate page: ${row.candidatePageShot ? `<a href="../${esc(row.candidatePageShot)}" target="_blank" rel="noopener">${esc(row.candidatePageShot)}</a>` : 'n/a'} ${candidatePageShotGitHub ? `| <a href="${esc(candidatePageShotGitHub)}" target="_blank" rel="noopener">GitHub</a>` : ''}</li>
    </ul>
  </section>

  <section class="card">
    <h2>DOM Evidence (XPath + HTML)</h2>
    ${baselineEvidenceHtml}
    ${candidateEvidenceHtml}
  </section>
</body>
</html>`;
    fs.writeFileSync(htmlPath, renderedHtml);

    const legacyMdNames = new Set();
    for (const modeRow of issue.rows) {
      legacyAliasDraftFileNames(modeRow).forEach((name) => legacyMdNames.add(name));
      const legacyDefaultName = legacyDefaultBugDraftFileName(modeRow);
      if (legacyDefaultName) {
        legacyMdNames.add(legacyDefaultName);
      }
      legacyMdNames.add(bugDraftFileName(modeRow));
    }

    legacyMdNames.delete(mdName);
    for (const legacyMdName of legacyMdNames) {
      if (!legacyMdName || expectedDraftNames.has(legacyMdName)) {
        continue;
      }
      if (legacyAliasTargetByName.has(legacyMdName) && legacyAliasTargetByName.get(legacyMdName) !== mdName) {
        continue;
      }
      legacyAliasTargetByName.set(legacyMdName, mdName);
      const legacyHtmlName = legacyMdName.replace(/\.md$/i, '.html');
      const legacyMdPath = path.join(bugDraftDir, legacyMdName);
      const legacyHtmlPath = path.join(bugDraftDir, legacyHtmlName);
      const sourceUrl = bugDraftSourceUrl(mdName);
      const legacyMd = [
        '# Legacy Draft Redirect',
        '',
        `This legacy draft path now maps to the consolidated draft for **${title}**.`,
        '',
        `- Rendered HTML: ./${htmlName}`,
        `- Canonical Markdown: ./${mdName}`,
        sourceUrl ? `- GitHub Source (Canonical Markdown): ${sourceUrl}` : '',
        '',
      ].filter(Boolean).join('\n');
      fs.writeFileSync(legacyMdPath, `${legacyMd}\n`);

      const legacyHtml = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Legacy Draft Redirect</title>
<meta http-equiv="refresh" content="0; url=${esc(htmlName)}" />
</head>
<body>
  <p>This legacy path now redirects to <a href="${esc(htmlName)}">${esc(htmlName)}</a>.</p>
</body>
</html>`;
      fs.writeFileSync(legacyHtmlPath, legacyHtml);
    }

    const csvEsc = (s) => `"${String(s).replace(/"/g, '""')}"`;
    csvLines.push([
      idx,
      title,
      row.route,
      issue.modeLabel,
      row.component,
      row.selector,
      row.baselineUrl,
      row.candidateUrl,
      deltas.join(' | '),
      cssList.join(' | '),
      baselineCssList.join(' | '),
      candidateCssList.join(' | '),
      suggestion ? suggestion.confidence : '',
      suggestion ? suggestion.selectorHint : '',
      suggestion ? suggestion.declarations.join(' | ') : '',
      baselinePrimary.xpath || '',
      baselinePrimary.html || '',
      candidatePrimary.xpath || '',
      candidatePrimary.html || '',
      row.baselineShot,
      row.candidateShot,
    ].map(csvEsc).join(','));

    const sourceBugUrl = bugDraftSourceUrl(mdName);
    indexLines.push(`${idx}. [${title}](bug-drafts/${htmlName})`);
    if (sourceBugUrl) {
      indexLines.push(`   GitHub source: ${sourceBugUrl}`);
    }

    const cssSummary = cssList.slice(0, 3).join(' | ');
    const patchSummary = suggestion
      ? `${suggestion.selectorHint} { ${suggestion.declarations.join(' ')} }`
      : 'No confidence-gated patch suggestion generated.';
    const priority = priorityScoreForIssue(issue, suggestion, cssList);
    const quickSummary = humanSummaryLines[0] || 'Visual differences were detected between baseline and candidate.';
    const publishedBugUrl = runId ? `${repoPagesBase}/report/${runId}/element-compare/bug-drafts/${htmlName}` : '';
    htmlIndexRows.push({
      idx,
      title,
      mdName,
      route: row.route,
      colorMode: issue.modeLabel,
      component: row.component,
      localBugUrl: `bug-drafts/${htmlName}`,
      publishedBugUrl,
      sourceBugUrl,
      cssSummary,
      primaryCssFile: cssList[0] || 'unknown',
      patchSummary,
      deltas: deltas.join(' | ') || 'Significant visual difference observed',
      quickSummary,
      priorityScore: priority.score,
      priorityLevel: priority.level,
      priorityReasons: priority.reasons,
      priorityCaveats: priority.caveats,
    });

    const primaryCssFile = cssList[0] || 'unknown';
    cssBuckets[primaryCssFile] = cssBuckets[primaryCssFile] || [];
    cssBuckets[primaryCssFile].push({
      idx,
      title,
      mdName,
      route: row.route,
      component: row.component,
      priorityScore: priority.score,
      secondary: cssList.slice(1),
    });
    if (suggestion) {
      patchBuckets[suggestion.cssFile] = patchBuckets[suggestion.cssFile] || [];
      patchBuckets[suggestion.cssFile].push({
        idx,
        title,
        selector: suggestion.selectorHint,
        confidence: suggestion.confidence,
        declarations: suggestion.declarations,
      });
    }
    idx += 1;
  }

  fs.writeFileSync(path.join(outDir, 'bug-drafts.csv'), `${csvLines.join('\n')}\n`);

  htmlIndexRows.sort((a, b) => b.priorityScore - a.priorityScore || a.idx - b.idx);

  const renderPriorityRows = (rowsToRender) => rowsToRender.map((item) => {
    const sourceLink = item.sourceBugUrl
      ? `<a href="${esc(item.sourceBugUrl)}" target="_blank" rel="noopener">GitHub Source</a>`
      : '<span class="muted">Source n/a</span>';
    const renderedLocalLink = `<a href="${esc(item.localBugUrl)}" target="_blank" rel="noopener">Rendered Draft (HTML)</a>`;
    const renderedPublishedLink = item.publishedBugUrl
      ? `<a href="${esc(item.publishedBugUrl)}" target="_blank" rel="noopener">Published Draft (HTML)</a>`
      : '';
    const reasonItems = (item.priorityReasons || []).map((reason) => `<li>${esc(reason)}</li>`).join('');
    const caveatItems = (item.priorityCaveats || []).map((caveat) => `<li>${esc(caveat)}</li>`).join('');
    const caveatSection = caveatItems
      ? `<p class="meta"><strong>Review caveats:</strong></p><ul class="priority-reasons muted-list">${caveatItems}</ul>`
      : '';
    const headingText = `${item.idx}. ${item.title}`;
    const headingId = `draft-${item.idx}-${headingSlug(item.title).slice(0, 60)}`;
    const linkParts = [renderedLocalLink, renderedPublishedLink, sourceLink].filter(Boolean);
    return [
      '<li>',
      headingWithAnchor(2, headingText, { id: headingId }),
      `<p><strong>Priority:</strong> <span class="priority-badge ${esc(item.priorityLevel)}">${esc(item.priorityLevel.toUpperCase())}</span> <strong>Score:</strong> ${item.priorityScore}</p>`,
      `<p><strong>Route:</strong> ${esc(item.route)} | <strong>Mode:</strong> ${esc(item.colorMode)} | <strong>Component:</strong> ${esc(item.component)}</p>`,
      `<p><strong>Quick Summary:</strong> ${esc(item.quickSummary || 'Visual differences were detected between baseline and candidate.')}</p>`,
      `<p><strong>Deltas:</strong> ${esc(item.deltas)}</p>`,
      `<p><strong>Likely CSS:</strong> ${esc(item.cssSummary)}</p>`,
      '<p><strong>Why prioritized:</strong></p>',
      `<ul class="priority-reasons">${reasonItems || '<li>No specific prioritization reason captured.</li>'}</ul>`,
      caveatSection,
      `<pre>${esc(item.patchSummary)}</pre>`,
      `<p class="links">${linkParts.join(' <span aria-hidden="true">|</span> ')}</p>`,
      '</li>',
    ].join('');
  }).join('\n');

  const topPriorityRows = renderPriorityRows(htmlIndexRows.slice(0, 25));
  const htmlRows = renderPriorityRows(htmlIndexRows);
  const signalFamilies = Object.values(htmlIndexRows.reduce((acc, item) => {
    const familyKey = `${item.component}||${item.primaryCssFile || 'unknown'}`;
    if (!acc[familyKey]) {
      acc[familyKey] = {
        key: familyKey,
        component: item.component,
        cssFile: item.primaryCssFile || 'unknown',
        count: 0,
        maxScore: 0,
        routes: new Set(),
        items: [],
      };
    }
    const family = acc[familyKey];
    family.count += 1;
    family.maxScore = Math.max(family.maxScore, item.priorityScore || 0);
    family.routes.add(item.route);
    family.items.push(item);
    return acc;
  }, {}))
    .map((family) => ({
      ...family,
      routeList: Array.from(family.routes).sort(),
    }))
    .sort((a, b) => b.count - a.count || b.maxScore - a.maxScore || a.component.localeCompare(b.component));
  const signalFamilyRows = signalFamilies.slice(0, 20).map((family) => {
    const routePreview = family.routeList.slice(0, 6).join(' | ');
    const sampleLinks = family.items
      .slice()
      .sort((a, b) => b.priorityScore - a.priorityScore)
      .slice(0, 3)
      .map((item) => `<li><a href="${esc(item.localBugUrl)}" target="_blank" rel="noopener">${esc(item.title)}</a></li>`)
      .join('');
    return [
      '<li>',
      `<strong>${esc(family.component)}</strong> via <code>${esc(family.cssFile)}</code>: ${family.count} issue(s), highest priority ${family.maxScore}`,
      `<div class="meta">Routes: ${esc(routePreview)}${family.routeList.length > 6 ? ` (+${family.routeList.length - 6} more)` : ''}</div>`,
      `<ul class="family-samples">${sampleLinks}</ul>`,
      '</li>',
    ].join('');
  }).join('');
  const componentClusters = Object.entries(htmlIndexRows.reduce((acc, item) => {
    if (!acc[item.component]) {
      acc[item.component] = { count: 0, maxScore: 0 };
    }
    acc[item.component].count += 1;
    acc[item.component].maxScore = Math.max(acc[item.component].maxScore, item.priorityScore || 0);
    return acc;
  }, {})).sort((a, b) => b[1].count - a[1].count || b[1].maxScore - a[1].maxScore || a[0].localeCompare(b[0]));
  const componentClusterRows = componentClusters
    .map(([component, stats]) => `<li><strong>${esc(component)}</strong>: ${stats.count} issue(s), highest priority score ${stats.maxScore}</li>`)
    .join('');

  const htmlIndex = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Draft Bug Reports</title>
<style>
  :root { color-scheme: light dark; }
  body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; margin: 2rem auto; max-width: 1100px; padding: 0 1rem; line-height: 1.45; }
  h1 { margin-bottom: 0.2rem; }
  h2.section-title { margin-top: 1.5rem; }
  .meta { color: #666; margin: 0.2rem 0; }
  ol { padding-left: 1.25rem; }
  li { margin: 1rem 0 1.5rem; border: 1px solid #d0d7de; border-radius: 8px; padding: 0.9rem; }
  li h2 { margin: 0 0 0.35rem; font-size: 1rem; }
  pre { white-space: pre-wrap; margin: 0.45rem 0; background: #f6f8fa; padding: 0.65rem; border-radius: 6px; overflow-x: auto; }
  .links { display: flex; gap: 0.75rem; flex-wrap: wrap; }
  .muted { color: #666; }
  .priority-badge { display: inline-block; padding: 0.1rem 0.5rem; border-radius: 999px; font-size: 0.75rem; font-weight: 700; letter-spacing: 0.04em; }
  .priority-badge.high { background: #fde7e9; color: #8f1d25; }
  .priority-badge.medium { background: #fff4d8; color: #8a5b00; }
  .priority-badge.low { background: #e9f3ff; color: #0b4a8f; }
  .priority-reasons { margin-top: 0.2rem; margin-bottom: 0.2rem; }
  .muted-list { color: #666; }
  .cluster-list li { margin: 0.35rem 0; border: 0; padding: 0; }
  .family-samples { margin-top: 0.3rem; }
  .family-samples li { border: 0; padding: 0; margin: 0.2rem 0; }
  .heading-anchor { margin-left: 0.45rem; font-size: 0.8em; font-weight: 500; text-decoration: none; opacity: 0.78; }
  .heading-anchor:hover, .heading-anchor:focus { text-decoration: underline; opacity: 1; }
  :target { scroll-margin-top: 1rem; }
  h1:focus, h2:focus { outline: 3px solid #005fcc; outline-offset: 2px; scroll-margin-top: 1rem; }
</style>
</head>
<body>
  ${headingWithAnchor(1, 'Draft Bug Reports')}
  <p class="meta">Generated: ${esc(new Date().toISOString())}</p>
  <p class="meta">Baseline: ${esc(baselineLabel)} | Candidate: ${esc(candidateLabel)}${runId ? ` | Run: ${esc(runId)}` : ''}</p>
  <p>This list is sorted by impact to help triage what to review first: commonly found issues, easily visible changes, and drafts with potential patch suggestions.</p>
  ${headingWithAnchor(2, 'Signal Families (Top Repeated Patterns)', { className: 'section-title' })}
  <ul class="cluster-list">
    ${signalFamilyRows || '<li>No repeated issue families found for this run.</li>'}
  </ul>
  ${headingWithAnchor(2, 'Common Issue Clusters (By Component)', { className: 'section-title' })}
  <ul class="cluster-list">
    ${componentClusterRows || '<li>No component clusters found for this run.</li>'}
  </ul>
  <p>Use <strong>GitHub Source</strong> to inspect the draft markdown in the repository and <strong>Rendered Draft (HTML)</strong> for the report-local file.</p>
  ${headingWithAnchor(2, 'Top 25 to Review First', { className: 'section-title' })}
  <ol>
    ${topPriorityRows || '<li><p>No flagged diffs found for this run.</p></li>'}
  </ol>
  ${headingWithAnchor(2, 'All Drafts (Priority Sorted)', { className: 'section-title' })}
  <ol>
    ${htmlRows || '<li><p>No flagged diffs found for this run.</p></li>'}
  </ol>
</body>
</html>`;

  fs.writeFileSync(path.join(outDir, 'bug-drafts-index.html'), htmlIndex);

  const bugIndexMarkdown = [
    '# Draft Bug Reports',
    '',
    'This endpoint may render as raw Markdown on GitHub Pages.',
    '',
    '- Open the browsable HTML index: [bug-drafts-index.html](./bug-drafts-index.html)',
    runId ? `- Published HTML index: ${repoPagesBase}/report/${runId}/element-compare/bug-drafts-index.html` : '',
    '',
    'If you need machine-readable data, use `bug-drafts.csv` in this same directory.',
    '',
    '---',
    '',
    ...indexLines,
  ].filter(Boolean).join('\n');
  fs.writeFileSync(path.join(outDir, 'bug-drafts-index.md'), `${bugIndexMarkdown}\n`);

  const cssIndex = ['# Draft Bug Reports Grouped By CSS Source', '', `Generated: ${new Date().toISOString()}`, ''];
  const cssEntries = Object.entries(cssBuckets).sort((a, b) => b[1].length - a[1].length || a[0].localeCompare(b[0]));
  const cssHtmlSections = [];
  for (const [cssFile, items] of cssEntries) {
    cssIndex.push(`## ${cssFile} (${items.length})`);
    const perComponent = Object.entries(items.reduce((acc, item) => {
      const key = item.component || 'Unknown component';
      acc[key] = acc[key] || { count: 0, maxPriority: 0 };
      acc[key].count += 1;
      acc[key].maxPriority = Math.max(acc[key].maxPriority, item.priorityScore || 0);
      return acc;
    }, {})).sort((a, b) => b[1].count - a[1].count || b[1].maxPriority - a[1].maxPriority || a[0].localeCompare(b[0]));

    const familyEntries = Object.entries(items.reduce((acc, item) => {
      const key = item.component || 'Unknown component';
      if (!acc[key]) {
        acc[key] = {
          count: 0,
          maxPriority: 0,
          routes: new Set(),
          samples: [],
        };
      }
      const family = acc[key];
      family.count += 1;
      family.maxPriority = Math.max(family.maxPriority, item.priorityScore || 0);
      if (item.route) {
        family.routes.add(item.route);
      }
      family.samples.push(item);
      return acc;
    }, {})).map(([component, data]) => ({
      component,
      count: data.count,
      maxPriority: data.maxPriority,
      routes: Array.from(data.routes).sort(),
      samples: data.samples
        .slice()
        .sort((a, b) => (b.priorityScore || 0) - (a.priorityScore || 0))
        .slice(0, 2),
    })).sort((a, b) => b.count - a.count || b.maxPriority - a.maxPriority || a.component.localeCompare(b.component));

    cssIndex.push('- Top repeated components in this CSS bucket:');
    for (const [component, stats] of perComponent.slice(0, 6)) {
      cssIndex.push(`  - ${component}: ${stats.count} issue(s), max priority ${stats.maxPriority}`);
    }
    cssIndex.push('- Issue families (high-level groups):');
    for (const family of familyEntries.slice(0, 8)) {
      const routePreview = family.routes.slice(0, 4).join(' | ');
      cssIndex.push(`  - ${family.component}: ${family.count} issue(s), max priority ${family.maxPriority}${routePreview ? `, routes: ${routePreview}${family.routes.length > 4 ? ` (+${family.routes.length - 4} more)` : ''}` : ''}`);
    }

    const cssHtmlItems = [];
    const componentSummaryHtml = perComponent.slice(0, 6)
      .map(([component, stats]) => `<li><strong>${esc(component)}</strong>: ${stats.count} issue(s), max priority ${stats.maxPriority}</li>`)
      .join('');
    const familySummaryHtml = familyEntries.slice(0, 12).map((family) => {
      const routePreview = family.routes.slice(0, 4).join(' | ');
      const sampleLinks = family.samples.map((sample) => {
        const sampleHref = `bug-drafts/${sample.mdName.replace(/\.md$/i, '.html')}`;
        return `<li><a href="${esc(sampleHref)}" target="_blank" rel="noopener">${esc(sample.title)}</a></li>`;
      }).join('');
      return [
        '<li>',
        `<strong>${esc(family.component)}</strong>: ${family.count} issue(s), max priority ${family.maxPriority}`,
        routePreview ? `<div class="meta">Routes: ${esc(routePreview)}${family.routes.length > 4 ? ` (+${family.routes.length - 4} more)` : ''}</div>` : '',
        sampleLinks ? `<ul class="family-samples">${sampleLinks}</ul>` : '',
        '</li>',
      ].join('');
    }).join('');
    for (const item of items) {
      const sourceBugUrl = bugDraftSourceUrl(item.mdName);
      const htmlDraftName = item.mdName.replace(/\.md$/i, '.html');
      cssIndex.push(`- ${item.idx}. [${item.title}](bug-drafts/${htmlDraftName})`);
      if (sourceBugUrl) {
        cssIndex.push(`  - GitHub source: ${sourceBugUrl}`);
      }
      if (item.secondary && item.secondary.length) {
        cssIndex.push(`  - Secondary candidates: ${item.secondary.slice(0, 3).join(' | ')}`);
      }

      const secondary = item.secondary && item.secondary.length
        ? `<div class="meta">Secondary candidates: ${esc(item.secondary.slice(0, 3).join(' | '))}</div>`
        : '';
      cssHtmlItems.push([
        '<li>',
        `<a href="bug-drafts/${esc(item.mdName.replace(/\.md$/i, '.html'))}" target="_blank" rel="noopener">${item.idx}. ${esc(item.title)}</a>`,
        sourceBugUrl ? ` <a href="${esc(sourceBugUrl)}" target="_blank" rel="noopener">GitHub Source</a>` : '',
        secondary,
        '</li>',
      ].join(''));
    }
    cssHtmlSections.push([
      `<section>`,
      `<h2>${esc(cssFile)} (${items.length})</h2>`,
      '<p class="meta"><strong>Issue families in this CSS bucket (grouped view):</strong></p>',
      `<ul class="family-summary">${familySummaryHtml || '<li>No issue families available.</li>'}</ul>`,
      '<p class="meta"><strong>Top repeated components snapshot:</strong></p>',
      `<ul class="component-summary">${componentSummaryHtml || '<li>No component summary available.</li>'}</ul>`,
      `<details class="issue-details"><summary>View individual draft entries (${items.length})</summary>`,
      '<ul>',
      cssHtmlItems.join('\n'),
      '</ul>',
      '</details>',
      '</section>',
    ].join('\n'));
    cssIndex.push('');
  }

  const cssHtml = `<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Draft Bug Reports Grouped By CSS</title>
<style>
  body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; margin: 2rem auto; max-width: 1100px; padding: 0 1rem; line-height: 1.45; }
  h1 { margin-bottom: 0.2rem; }
  .meta { color: #666; margin-top: 0.2rem; }
  section { border: 1px solid #d0d7de; border-radius: 8px; padding: 0.8rem 1rem; margin: 1rem 0; }
  ul { margin: 0.4rem 0 0; padding-left: 1.2rem; }
  li { margin: 0.3rem 0; }
  .component-summary li { margin: 0.2rem 0; }
  .family-summary li { margin: 0.5rem 0; }
  .family-samples { margin-top: 0.3rem; }
  .family-samples li { margin: 0.2rem 0; }
  details.issue-details { margin-top: 0.6rem; }
  details.issue-details summary { cursor: pointer; font-weight: 600; }
</style>
</head>
<body>
  <h1>Draft Bug Reports Grouped By CSS Source</h1>
  <p class="meta">Generated: ${esc(new Date().toISOString())}</p>
  ${cssHtmlSections.length ? cssHtmlSections.join('\n') : '<p>No grouped CSS draft entries found.</p>'}
</body>
</html>`;
  fs.writeFileSync(path.join(outDir, 'bug-drafts-by-css.html'), cssHtml);

  const cssMarkdownBridge = [
    '# Draft Bug Reports Grouped By CSS Source',
    '',
    'This endpoint may render as raw Markdown on GitHub Pages.',
    '',
    '- Open the browsable HTML report: [bug-drafts-by-css.html](./bug-drafts-by-css.html)',
    runId ? `- Published HTML report: ${repoPagesBase}/report/${runId}/element-compare/bug-drafts-by-css.html` : '',
    '',
    '---',
    '',
    ...cssIndex,
  ].filter(Boolean).join('\n');
  fs.writeFileSync(path.join(outDir, 'bug-drafts-by-css.md'), `${cssMarkdownBridge}\n`);

  for (const cssFile of Object.keys(patchBuckets).sort()) {
    patchLines.push(`## ${cssFile}`);
    for (const item of patchBuckets[cssFile]) {
      patchLines.push(`### ${item.idx}. ${item.title}`);
      patchLines.push(`Confidence: **${item.confidence}**`);
      patchLines.push('');
      patchLines.push('```css');
      patchLines.push(`${item.selector} {`);
      for (const decl of item.declarations) {
        patchLines.push(`  ${decl}`);
      }
      patchLines.push('}');
      patchLines.push('```');
      patchLines.push('');
    }
  }

  if (Object.keys(patchBuckets).length === 0) {
    patchLines.push('No medium/high confidence patch suggestions were generated for this run.');
    patchLines.push('');
  }

  fs.writeFileSync(path.join(outDir, 'suggested-css-patches.md'), `${patchLines.join('\n')}\n`);

  const linkValidation = validateGeneratedLocalLinks(outDir);
  fs.writeFileSync(
    path.join(outDir, 'link-check-report.json'),
    `${JSON.stringify({
      generatedAt: new Date().toISOString(),
      scannedFiles: linkValidation.scannedFiles,
      checkedTargets: linkValidation.checkedTargets,
      brokenLinks: linkValidation.missing.length,
      missing: linkValidation.missing,
    }, null, 2)}\n`,
  );
  if (linkValidation.missing.length) {
    throw new Error(`Link validation failed: ${linkValidation.missing.length} broken local links found. See link-check-report.json`);
  }

  console.log('Generated element compare dashboard');
})();
NODE

SRC_OUT_DIR="$ROOT_DIR/drupal-git/.ddev/drupal-admin-vrt/element-compare-out"
mkdir -p "$TMP_HOST_OUT_DIR"

# Copy recursively from container output to host output.
ddev exec bash -lc "cd '$CONTAINER_OUT_DIR' && tar -cf - baseline candidate baseline-pages candidate-pages bug-drafts" | tar -xf - -C "$TMP_HOST_OUT_DIR"

# Copy dashboard metadata files directly from container to host.
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/element-compare-dashboard.html'" > "$TMP_HOST_OUT_DIR/element-compare-dashboard.html"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/element-compare.json'" > "$TMP_HOST_OUT_DIR/element-compare.json"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-index.html'" > "$TMP_HOST_OUT_DIR/bug-drafts-index.html"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-index.md'" > "$TMP_HOST_OUT_DIR/bug-drafts-index.md"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-by-css.html'" > "$TMP_HOST_OUT_DIR/bug-drafts-by-css.html"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts-by-css.md'" > "$TMP_HOST_OUT_DIR/bug-drafts-by-css.md"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/suggested-css-patches.md'" > "$TMP_HOST_OUT_DIR/suggested-css-patches.md"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/bug-drafts.csv'" > "$TMP_HOST_OUT_DIR/bug-drafts.csv"
ddev exec bash -lc "cat '$CONTAINER_OUT_DIR/link-check-report.json'" > "$TMP_HOST_OUT_DIR/link-check-report.json"

rm -rf "$HOST_OUT_DIR"
mv "$TMP_HOST_OUT_DIR" "$HOST_OUT_DIR"

echo "Generated: $HOST_OUT_DIR/element-compare-dashboard.html"
