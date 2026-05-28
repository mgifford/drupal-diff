#!/usr/bin/env bash
set -euo pipefail

RUN_ID="${1:-}"
RUN_SCREENSHOT_DIR="${2:-}"
COLOR_MODE="${3:-both}"

if [[ -z "$RUN_ID" || -z "$RUN_SCREENSHOT_DIR" ]]; then
  echo "Usage: $0 <run-id> <run-screenshot-dir> [light|dark|both]"
  exit 1
fi

if [[ "$COLOR_MODE" != "light" && "$COLOR_MODE" != "dark" && "$COLOR_MODE" != "both" ]]; then
  echo "color mode must be one of: light, dark, both"
  exit 1
fi

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BASELINE_DIR="$ROOT_DIR/drupal-11.3.10"
CANDIDATE_DIR="$ROOT_DIR/drupal-git"

capture_project() {
  local project_dir="$1"
  local base_url="$2"
  local label="$3"

  local host_out_dir="$RUN_SCREENSHOT_DIR/interactions/$label"
  local container_out_dir="/var/www/html/interaction-results"

  mkdir -p "$host_out_dir"

  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npm install >/dev/null)
  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npx playwright install --with-deps chromium >/dev/null)

  set +e
  (cd "$project_dir" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt env \
    BASE_URL="$base_url" \
    OUT_DIR="$container_out_dir" \
    COLOR_MODE="$COLOR_MODE" \
    DRUPAL_ADMIN_USER=admin \
    DRUPAL_ADMIN_PASS=adminadminadmin \
    node - <<'NODE'
const { chromium } = require('playwright');
const fs = require('fs');
const path = require('path');

(async () => {
  const baseUrl = process.env.BASE_URL;
  const outDir = process.env.OUT_DIR;
  const colorMode = process.env.COLOR_MODE || 'both';
  const username = process.env.DRUPAL_ADMIN_USER;
  const password = process.env.DRUPAL_ADMIN_PASS;
  const schemes = colorMode === 'both' ? ['light', 'dark'] : [colorMode];

  fs.mkdirSync(outDir, { recursive: true });

  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({ viewport: { width: 1440, height: 1024 } });
  const page = await context.newPage();

  const summary = [];

  await page.goto(`${baseUrl}/user/login`, { waitUntil: 'networkidle' });
  await page.getByLabel('Username').fill(username);
  await page.getByLabel('Password').fill(password);
  await page.getByRole('button', { name: 'Log in' }).click();
  await page.waitForLoadState('networkidle');

  const routes = [
    { id: 'content', path: '/admin/content' },
    { id: 'structure', path: '/admin/structure' },
    { id: 'appearance', path: '/admin/appearance' },
    { id: 'config', path: '/admin/config' },
    { id: 'people', path: '/admin/people' },
  ];

  for (const route of routes) {
    for (const scheme of schemes) {
      const item = { route: route.path, colorMode: scheme, hover: false, focus: false, modal: false, notes: [] };

      await page.emulateMedia({ colorScheme: scheme });
      await page.goto(`${baseUrl}${route.path}`, { waitUntil: 'networkidle' });
      await page.screenshot({ path: path.join(outDir, `${route.id}-${scheme}-default.png`), fullPage: true });

      const interactable = page.locator('a, button, [role="button"], input, select, textarea').first();
      if (await interactable.count()) {
        await interactable.focus();
        await page.screenshot({ path: path.join(outDir, `${route.id}-${scheme}-focus.png`), fullPage: true });
        item.focus = true;

        try {
          await interactable.hover();
          await page.screenshot({ path: path.join(outDir, `${route.id}-${scheme}-hover.png`), fullPage: true });
          item.hover = true;
        } catch {
          item.notes.push('hover-not-available');
        }
      } else {
        item.notes.push('no-interactable-element');
      }

      const modalTrigger = page.locator('[data-dialog-type="modal"], [aria-haspopup="dialog"], .use-ajax').first();
      if (await modalTrigger.count()) {
        try {
          await modalTrigger.click({ timeout: 2000 });
          await page.waitForTimeout(700);
          const modal = page.locator('[role="dialog"], .ui-dialog, .ui-widget-overlay, .off-canvas, [data-drupal-dialog]');
          if (await modal.count()) {
            await page.screenshot({ path: path.join(outDir, `${route.id}-${scheme}-modal.png`), fullPage: true });
            item.modal = true;
            await page.keyboard.press('Escape');
            await page.waitForTimeout(300);
          } else {
            item.notes.push('modal-triggered-but-not-detected');
          }
        } catch {
          item.notes.push('modal-trigger-click-failed');
        }
      } else {
        item.notes.push('no-modal-trigger-found');
      }

      summary.push(item);
    }
  }

  fs.writeFileSync(path.join(outDir, 'interaction-summary.json'), JSON.stringify(summary, null, 2));
  await browser.close();
})();
NODE
  )
  local exec_exit_code=$?
  set -e

  if [[ -d "$project_dir/interaction-results" ]]; then
    rsync -a --delete "$project_dir/interaction-results/" "$host_out_dir/" || true
  fi

  {
    echo "project=$label"
    echo "base_url=$base_url"
    echo "capture_exit_code=$exec_exit_code"
    echo "timestamp_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  } > "$host_out_dir/capture-status.txt"

  return 0
}

capture_project "$BASELINE_DIR" "http://drupal-11.3.10.ddev.site" "baseline"
capture_project "$CANDIDATE_DIR" "http://drupal-git.ddev.site:8080" "candidate"
