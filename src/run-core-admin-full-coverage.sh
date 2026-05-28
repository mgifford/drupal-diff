#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BASELINE_DIR="$ROOT_DIR/drupal-11.3.10"
CANDIDATE_DIR="$ROOT_DIR/drupal-git"
SHARED_REPORT_DIR="$ROOT_DIR/report"
SHARED_SCREENSHOT_DIR="$ROOT_DIR/screenshots"
SEED_SCRIPT="$ROOT_DIR/src/seed-dummy-content.sh"

RUN_LABEL="${1:-core-admin-full}"
SEED_CONTENT="${2:-true}"
MAX_PAGES="${3:-0}"

if [[ "$SEED_CONTENT" != "true" && "$SEED_CONTENT" != "false" ]]; then
  echo "Usage: $0 [run-label] [seed-content:true|false] [max-pages:0-for-unlimited]"
  exit 1
fi

if ! [[ "$MAX_PAGES" =~ ^[0-9]+$ ]]; then
  echo "max-pages must be a non-negative integer"
  exit 1
fi

RUN_ID="$(date +%Y%m%d-%H%M%S)"
RUN_REPORT_DIR="$SHARED_REPORT_DIR/$RUN_ID"
RUN_SCREENSHOT_DIR="$SHARED_SCREENSHOT_DIR/$RUN_ID/core-admin-coverage"
ROUTES_FILE="$RUN_REPORT_DIR/core-admin-routes.txt"
MISSING_FILE="$RUN_REPORT_DIR/core-admin-route-status.csv"
SUMMARY_FILE="$RUN_REPORT_DIR/core-admin-coverage-summary.md"

mkdir -p "$RUN_REPORT_DIR" "$RUN_SCREENSHOT_DIR"

echo "[1/8] Starting DDEV projects"
(cd "$BASELINE_DIR" && ddev start >/dev/null)
(cd "$CANDIDATE_DIR" && ddev start >/dev/null)

echo "[2/8] Ensuring admin VRT add-on and Playwright dependencies"
if [[ ! -d "$BASELINE_DIR/.ddev/drupal-admin-vrt" ]]; then
  (cd "$BASELINE_DIR" && ddev add-on install https://github.com/mherchel/ddev-drupal-admin-vrt/tarball/main)
fi
if [[ ! -d "$CANDIDATE_DIR/.ddev/drupal-admin-vrt" ]]; then
  (cd "$CANDIDATE_DIR" && ddev add-on install https://github.com/mherchel/ddev-drupal-admin-vrt/tarball/main)
fi
(cd "$BASELINE_DIR" && ddev restart >/dev/null)
(cd "$CANDIDATE_DIR" && ddev restart >/dev/null)
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npm install >/dev/null)
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npx playwright install --with-deps chromium >/dev/null)

echo "[3/8] Seeding dummy content"
if [[ "$SEED_CONTENT" == "true" ]]; then
  "$SEED_SCRIPT"
else
  echo "Skipping dummy content seeding"
fi

echo "[4/8] Discovering reachable /admin routes from baseline"
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt env \
  BASE_URL="http://drupal-11.3.10.ddev.site" \
  OUT_FILE="/var/www/html/.ddev/drupal-admin-vrt/core-admin-routes.txt" \
  DRUPAL_ADMIN_USER="admin" \
  DRUPAL_ADMIN_PASS="adminadminadmin" \
  MAX_PAGES="$MAX_PAGES" \
  node - <<'NODE'
const fs = require('fs');
const { chromium } = require('playwright');

const baseUrl = process.env.BASE_URL;
const outFile = process.env.OUT_FILE;
const username = process.env.DRUPAL_ADMIN_USER;
const password = process.env.DRUPAL_ADMIN_PASS;
const maxPages = Number(process.env.MAX_PAGES || '0');

function canonicalize(href, origin) {
  try {
    const u = new URL(href, origin);
    if (u.origin !== origin) return null;
    if (!u.pathname.startsWith('/admin')) return null;
    if (u.pathname === '/user/logout') return null;
    return u.pathname;
  } catch {
    return null;
  }
}

(async () => {
  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
  const page = await context.newPage();

  await page.goto(`${baseUrl}/user/login`, { waitUntil: 'networkidle' });
  await page.getByLabel('Username').fill(username);
  await page.getByLabel('Password').fill(password);
  await page.getByRole('button', { name: 'Log in' }).click();
  await page.waitForLoadState('networkidle');

  const origin = new URL(baseUrl).origin;
  const queue = ['/admin'];
  const seen = new Set();

  while (queue.length) {
    const route = queue.shift();
    if (seen.has(route)) continue;
    seen.add(route);

    if (maxPages > 0 && seen.size >= maxPages) break;

    try {
      await page.goto(`${baseUrl}${route}`, { waitUntil: 'networkidle', timeout: 30000 });
      const links = await page.$$eval('a[href]', (nodes) => nodes.map((n) => n.getAttribute('href')).filter(Boolean));
      for (const href of links) {
        const c = (function(h, o) {
          try {
            const u = new URL(h, o);
            if (u.origin !== o) return null;
            if (!u.pathname.startsWith('/admin')) return null;
            if (u.pathname === '/user/logout') return null;
            return u.pathname;
          } catch { return null; }
        })(href, origin);
        if (c && !seen.has(c)) queue.push(c);
      }
    } catch {
      // Keep crawling even when some pages fail.
    }
  }

  const routes = Array.from(seen).sort();
  fs.writeFileSync(outFile, routes.join('\n') + '\n');
  await context.close();
  await browser.close();
})();
NODE
)

(cd "$CANDIDATE_DIR" && ddev exec bash -lc "cat '/var/www/html/.ddev/drupal-admin-vrt/core-admin-routes.txt'") > "$ROUTES_FILE"
TOTAL_ROUTES="$(wc -l < "$ROUTES_FILE" | tr -d ' ')"
echo "Discovered $TOTAL_ROUTES admin routes"

echo "[5/8] Capturing full-page and interactive element states across all routes"
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt env \
  BASELINE_URL="http://drupal-11.3.10.ddev.site" \
  CANDIDATE_URL="http://drupal-git.ddev.site:8080" \
  ROUTES_FILE="/var/www/html/.ddev/drupal-admin-vrt/core-admin-routes.txt" \
  OUT_DIR="/var/www/html/.ddev/drupal-admin-vrt/core-admin-coverage-out" \
  STATUS_FILE="/var/www/html/.ddev/drupal-admin-vrt/core-admin-route-status.csv" \
  DRUPAL_ADMIN_USER="admin" \
  DRUPAL_ADMIN_PASS="adminadminadmin" \
  node - <<'NODE'
const fs = require('fs');
const path = require('path');
const { chromium } = require('playwright');

const baselineUrl = process.env.BASELINE_URL;
const candidateUrl = process.env.CANDIDATE_URL;
const routesFile = process.env.ROUTES_FILE;
const outDir = process.env.OUT_DIR;
const statusFile = process.env.STATUS_FILE;
const username = process.env.DRUPAL_ADMIN_USER;
const password = process.env.DRUPAL_ADMIN_PASS;

const selectors = 'a, button, input, select, textarea, [role="button"], [role="link"]';

function slug(route) {
  return route.replace(/^\//, '').replace(/[^a-zA-Z0-9]+/g, '-').replace(/^-+|-+$/g, '') || 'admin-root';
}

async function login(page, base) {
  await page.goto(`${base}/user/login`, { waitUntil: 'networkidle' });
  await page.getByLabel('Username').fill(username);
  await page.getByLabel('Password').fill(password);
  await page.getByRole('button', { name: 'Log in' }).click();
  await page.waitForLoadState('networkidle');
}

async function gotoRoute(page, url) {
  const response = await page.goto(url, { waitUntil: 'networkidle', timeout: 45000 });
  return response ? response.status() : 0;
}

async function captureStates(page, basePath, side) {
  await page.screenshot({ path: `${basePath}/${side}-full.png`, fullPage: true });

  const count = await page.locator(selectors).count();
  for (let i = 0; i < count; i++) {
    const loc = page.locator(selectors).nth(i);
    let visible = false;
    try {
      visible = await loc.isVisible({ timeout: 1500 });
    } catch {
      visible = false;
    }
    if (!visible) continue;

    const idx = String(i + 1).padStart(3, '0');

    try {
      await loc.scrollIntoViewIfNeeded({ timeout: 3000 });
      await loc.screenshot({ path: `${basePath}/${side}-el-${idx}-default.png` });
    } catch {
      continue;
    }

    try {
      await loc.focus({ timeout: 1500 });
      await loc.screenshot({ path: `${basePath}/${side}-el-${idx}-focus.png` });
    } catch {
      // no-op
    }

    try {
      await loc.hover({ timeout: 1500 });
      await loc.screenshot({ path: `${basePath}/${side}-el-${idx}-hover.png` });
    } catch {
      // no-op
    }
  }

  return count;
}

(async () => {
  const routes = fs.readFileSync(routesFile, 'utf8')
    .split('\n')
    .map((s) => s.trim())
    .filter(Boolean);

  fs.rmSync(outDir, { recursive: true, force: true });
  fs.mkdirSync(outDir, { recursive: true });

  const browser = await chromium.launch({ headless: true });
  const routeStats = routes.map((route) => ({
    route,
    baselineStatus: 0,
    candidateStatus: 0,
    baselineInteractives: 0,
    candidateInteractives: 0,
  }));

  async function captureSite(siteKey, base, statusField, countField) {
    const ctx = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
    const page = await ctx.newPage();
    await login(page, base);

    for (const stat of routeStats) {
      const folder = path.join(outDir, slug(stat.route));
      fs.mkdirSync(folder, { recursive: true });

      const status = await gotoRoute(page, `${base}${stat.route}`).catch(() => 0);
      stat[statusField] = status;

      if (status > 0 && status < 500) {
        stat[countField] = await captureStates(page, folder, siteKey).catch(() => 0);
      }

      console.log(`[${siteKey}] ${stat.route} status=${status} interactives=${stat[countField]}`);
    }

    await ctx.close();
  }

  await captureSite('baseline', baselineUrl, 'baselineStatus', 'baselineInteractives');
  await captureSite('candidate', candidateUrl, 'candidateStatus', 'candidateInteractives');

  const rows = ['route,baseline_status,candidate_status,baseline_interactives,candidate_interactives'];
  for (const stat of routeStats) {
    rows.push(`${stat.route},${stat.baselineStatus},${stat.candidateStatus},${stat.baselineInteractives},${stat.candidateInteractives}`);
  }

  fs.writeFileSync(statusFile, rows.join('\n') + '\n');
  await browser.close();
})();
NODE
)

echo "[6/8] Copying artifacts to host report/screenshot folders"
mkdir -p "$RUN_SCREENSHOT_DIR" "$RUN_REPORT_DIR/core-admin-coverage"
(cd "$CANDIDATE_DIR" && ddev exec bash -lc "cd '/var/www/html/.ddev/drupal-admin-vrt/core-admin-coverage-out' && tar -cf - .") | tar -xf - -C "$RUN_SCREENSHOT_DIR"
(cd "$CANDIDATE_DIR" && ddev exec bash -lc "cat '/var/www/html/.ddev/drupal-admin-vrt/core-admin-route-status.csv'") > "$MISSING_FILE"

TOTAL_ROWS="$(tail -n +2 "$MISSING_FILE" | wc -l | tr -d ' ')"
MATCHED_ROWS="$(awk -F, 'NR>1 && $2 ~ /^2/ && $3 ~ /^2/ {c++} END{print c+0}' "$MISSING_FILE")"
BASE_ONLY_ROWS="$(awk -F, 'NR>1 && $2 ~ /^2/ && $3 !~ /^2/ {c++} END{print c+0}' "$MISSING_FILE")"
CAND_ONLY_ROWS="$(awk -F, 'NR>1 && $2 !~ /^2/ && $3 ~ /^2/ {c++} END{print c+0}' "$MISSING_FILE")"

{
  echo "# Core Admin Full Coverage Summary"
  echo
  echo "- Run ID: $RUN_ID"
  echo "- Run label: $RUN_LABEL"
  echo "- Seed content: $SEED_CONTENT"
  echo "- Total discovered admin routes: $TOTAL_ROUTES"
  echo "- Routes processed: $TOTAL_ROWS"
  echo "- Routes with 2xx in both baseline and candidate: $MATCHED_ROWS"
  echo "- Routes available only in baseline (2xx baseline, non-2xx candidate): $BASE_ONLY_ROWS"
  echo "- Routes available only in candidate (non-2xx baseline, 2xx candidate): $CAND_ONLY_ROWS"
  echo
  echo "Artifacts:"
  echo
  echo "- Route list: report/$RUN_ID/core-admin-routes.txt"
  echo "- Coverage status: report/$RUN_ID/core-admin-route-status.csv"
  echo "- Screenshots (default/focus/hover): screenshots/$RUN_ID/core-admin-coverage/"
} > "$SUMMARY_FILE"

echo "[7/8] Updating run index"
if [[ ! -f "$SHARED_REPORT_DIR/run-index.csv" ]]; then
  echo "timestamp_utc,run_id,run_label,mode,refresh_baseline,baseline_revision,candidate_revision,baseline_admin_theme,candidate_admin_theme,vrt_exit_code,report_dir" > "$SHARED_REPORT_DIR/run-index.csv"
fi
BASELINE_REV="$(git -C "$BASELINE_DIR" rev-parse --short HEAD 2>/dev/null || echo n/a)"
CANDIDATE_REV="$(git -C "$CANDIDATE_DIR" rev-parse --short HEAD 2>/dev/null || echo n/a)"
echo "$(date -u +%Y-%m-%dT%H:%M:%SZ),$RUN_ID,$RUN_LABEL,core-admin-full,$SEED_CONTENT,$BASELINE_REV,$CANDIDATE_REV,gin,admin,0,$RUN_REPORT_DIR" >> "$SHARED_REPORT_DIR/run-index.csv"

echo "[8/8] Done"
echo "Summary: $SUMMARY_FILE"
echo "Route status CSV: $MISSING_FILE"
echo "Screenshots: $RUN_SCREENSHOT_DIR"
