# Drupal Admin Theme Visual Regression Toolkit

This repository provides a reproducible workflow to compare:

- **Drupal 11 + Gin** (baseline)
- **Drupal 12 + core admin theme** (candidate)

The goal is to identify **unplanned visual regressions** and create issue-ready evidence for CSS parity work.

## What This Repository Contains

- Comparison orchestration scripts in [src](src)
- Generated run artifacts in [report](report)
- Screenshots and interaction captures in [screenshots](screenshots)

This repository intentionally **does not track** local Drupal source copies:

- [drupal-11.3.10](drupal-11.3.10)
- [drupal-git](drupal-git)

Those are local working copies only.

## Latest Published Reports

GitHub Pages links:

- [Pages Home](https://mgifford.github.io/drupal-diff/)
- [Pages Report Index](https://mgifford.github.io/drupal-diff/report/)

Quick links for the most recent published run (`20260527-211449`):

- [Element Compare Dashboard](https://mgifford.github.io/drupal-diff/report/20260527-211449/element-compare/element-compare-dashboard.html)
- [Bug Drafts Index](report/20260527-211449/element-compare/bug-drafts-index.md)
- [Bug Drafts Grouped by CSS](report/20260527-211449/element-compare/bug-drafts-by-css.md)
- [Suggested CSS Patches](report/20260527-211449/element-compare/suggested-css-patches.md)

Latest full VRT run links (`20260527-160939`):

- [Issue Summary (Markdown)](report/20260527-160939/issue-3592061-summary.md)
- [Issue Summary (CSV)](report/20260527-160939/issue-3592061-summary.csv)
- [Side-by-side VRT Diff Viewer](https://mgifford.github.io/drupal-diff/report/20260527-160939/side-by-side-vrt-diffs.html)
- [Side-by-side Interaction Viewer](https://mgifford.github.io/drupal-diff/report/20260527-160939/side-by-side-interactions.html)
- [Playwright HTML Report](https://mgifford.github.io/drupal-diff/report/20260527-160939/playwright-report/index.html)

Browse all published runs:

- [All run folders](report)
- [Run index](report/run-index.csv)

## Prerequisites

Install the following on macOS/Linux:

1. `ddev`
2. Docker Desktop (or compatible Docker runtime)
3. `git`
4. `node` + `npm` (inside DDEV containers this is handled by scripts)

Optional but recommended:

1. `mkcert` for trusted HTTPS in local browser
2. modern Chromium-based browser

## Project Layout

- [src/run-admin-vrt-compare.sh](src/run-admin-vrt-compare.sh): Main end-to-end runner
- [src/rerun-after-patch.sh](src/rerun-after-patch.sh): Fast rerun against frozen baseline
- [src/open-latest-vrt-diff-viewer.sh](src/open-latest-vrt-diff-viewer.sh): Expected vs Actual vs Diff viewer
- [src/open-latest-side-by-side.sh](src/open-latest-side-by-side.sh): Baseline/Candidate interaction side-by-side viewer
- [src/generate-element-compare.sh](src/generate-element-compare.sh): Element-level metrics and screenshots dashboard
- [src/open-latest-element-compare.sh](src/open-latest-element-compare.sh): Generates and opens latest element dashboard + bug drafts
- [src/apply-vrt-addon-overrides.sh](src/apply-vrt-addon-overrides.sh): Re-applies tracked dark-mode VRT overrides into local Drupal copies
- [src/export-issue-report.sh](src/export-issue-report.sh): CSV/Markdown issue summary export
- [src/publish-report-updates.sh](src/publish-report-updates.sh): One-command commit/push of scripts/reports/screenshots
- [src/rebuild-report-index.sh](src/rebuild-report-index.sh): Rebuilds [report/index.html](report/index.html) from completed runs with valid artifacts
- [src/rebuild-pages-home.sh](src/rebuild-pages-home.sh): Rebuilds [index.html](index.html) so GitHub Pages home points to the latest completed run

## One-Time Environment Setup

### 1. Prepare local Drupal source copies

Create these two directories in the repository root:

1. `drupal-11.3.10` (Drupal 11 baseline source)
2. `drupal-git` (Drupal 12 candidate source)

Expected root after setup:

```text
drupal-diff/
  drupal-11.3.10/
  drupal-git/
  src/
  report/
  screenshots/
```

### 2. Configure baseline and candidate

Baseline (Drupal 11):

1. Install dependencies in DDEV
2. Install and enable `gin` theme (5.x)
3. Set admin theme to `gin`

Candidate (Drupal 12):

1. Use Drupal 12 branch (`main`/12.x-dev equivalent in your clone)
2. Install dependencies in DDEV
3. Use core admin theme `default_admin` (the compare runner enforces this automatically)

### 3. Ensure both projects run concurrently in DDEV

The workflow expects both to be accessible:

- `http://drupal-11.3.10.ddev.site`
- `http://drupal-git.ddev.site:8080`

If ports conflict, adjust `.ddev/config.yaml` in candidate project (for example `8080/8443`).

## Quick Start (Reproducible)

From repo root:

```bash
./src/run-admin-vrt-compare.sh normal first-run false both
```

Arguments:

1. `mode`: `normal` or `full`
2. `run-label`: arbitrary text for traceability
3. `refresh-baseline`: `true` or `false`
4. `color-mode`: `light`, `dark`, or `both`

Behavior:

1. Starts both DDEV projects
2. Ensures VRT add-on + Playwright dependencies
3. Captures or reuses baseline screenshots
4. Runs candidate comparison
5. Collects artifacts
6. Captures interaction screenshots
7. Exports issue summaries
8. Updates [report/run-index.csv](report/run-index.csv)

Note: The runner uses no-bail behavior for candidate comparison, so tests continue after failures and reports include all failing pages instead of stopping at the first 5 failures.

## Daily Workflow

### A) Compare current state

```bash
./src/run-admin-vrt-compare.sh normal css-check false both
```

### B) After applying a patch

```bash
./src/rerun-after-patch.sh normal patch-<ticket-or-branch>
```

For light/dark interaction capture during rerun, run:

```bash
./src/capture-admin-interactions.sh <run-id> <run-screenshot-dir> both
```

### C) Run full Core admin coverage (all discovered /admin routes)

```bash
./src/run-core-admin-full-coverage.sh core-admin-full true 0 both
```

Arguments:

1. `run-label`: text label for the run
2. `seed-content`: `true|false` (seeds dummy content in both sites before capture)
3. `max-pages`: `0` for unlimited crawl, or a positive integer cap
4. `color-mode`: `light`, `dark`, or `both`

This mode crawls the baseline admin UI, discovers reachable Core admin routes, then captures:

1. Full-page screenshots per route (baseline and candidate) for selected color mode(s)
2. Per-element screenshots for interactive elements in default/focus/hover states for selected color mode(s)
3. Route-level status coverage CSV (2xx/non-2xx for baseline and candidate)

### D) Open viewers

```bash
./src/open-latest-vrt-diff-viewer.sh
./src/open-latest-side-by-side.sh
./src/open-latest-element-compare.sh
```

The VRT viewer now includes both formats for each test case:

1. Diff-only view
2. Side-by-side baseline vs candidate view

It also includes filters for:

1. Viewport (`narrow`/mobile, `wide`/desktop, `mid`/tablet)
2. Color mode (`light`, `dark`, `unknown`)

Interaction capture is archetype-based (one representative element per interaction type per route/mode), not every individual element. This keeps coverage comprehensive but reviewable for complex UIs.

Current interaction archetypes include:

1. form control focus
2. navigation link hover
3. toggle with `aria-expanded`
4. toggle with `aria-pressed`
5. details/summary toggle
6. contextual trigger open

### F) Validate element-compare consistency (recommended before publish)

Run this after generating/updating element-compare artifacts to catch broken local links and missing required report files:

```bash
./src/test-element-compare-consistency.sh
```

Optional: validate a specific run directory:

```bash
./src/test-element-compare-consistency.sh report/<run-id>/element-compare
```

The check verifies:

1. required files exist (dashboard, bug draft indices, suggested CSS, link-check report)
2. all local links and image references inside generated HTML/Markdown resolve
3. `link-check-report.json` reports `brokenLinks: 0`

### E) Seed dummy content only

```bash
./src/seed-dummy-content.sh
```

This now seeds additional admin-UI fixtures for regression coverage:

1. reusable blocks for `/admin/content/block`
2. managed files (including `.png`/`.jpg`) for `/admin/content/files`
3. intentional malformed/zero-byte image payloads to exercise error-message rendering paths

Optional (Drupal 11/12): use the repo-tracked `realistic_dummy_content` artifact during seeding.

```bash
USE_REALISTIC_DUMMY_CONTENT=true ./src/seed-dummy-content.sh
```

The artifact lives at `artifacts/realistic_dummy_content` and includes a Drush command: `realistic-dummy-content:seed`.

If artifact seeding fails for any reason, the script falls back to built-in API/UI seeding and still ensures content types/nodes exist.

### F) Enable Twig debug hints in both Drupal instances

```bash
./src/enable-twig-debug.sh
```

This enables template debug comments and disables Twig cache for easier source tracing while comparing UI output.

## Outputs and How to Read Them

Each run creates a timestamped directory:

- `report/<run-id>/`
- `screenshots/<run-id>/`

Important files:

1. `report/<run-id>/run-metadata.txt`
2. `report/<run-id>/issue-3592061-summary.md`
3. `report/<run-id>/issue-3592061-summary.csv`
4. `report/<run-id>/side-by-side-vrt-diffs.html`
5. `report/<run-id>/element-compare/element-compare-dashboard.html`
6. `report/<run-id>/element-compare/bug-drafts-index.md`
7. `report/<run-id>/element-compare/bug-drafts-by-css.md`
8. `report/<run-id>/element-compare/bug-drafts/*.md`
9. `report/<run-id>/element-compare/suggested-css-patches.md`
10. `report/<run-id>/core-admin-coverage-summary.md` (when full coverage script is used)
11. `report/<run-id>/core-admin-route-status.csv` (when full coverage script is used)
12. `screenshots/<run-id>/interactions/baseline`
13. `screenshots/<run-id>/interactions/candidate`

## Replication Notes for Other Contributors

To replicate your exact run:

1. Pull this repository
2. Provide local Drupal source copies in excluded directories
3. Ensure DDEV URLs are reachable
4. Run the same command label/mode
5. Compare run metadata in `run-metadata.txt` and `run-index.csv`

Track reproducibility using:

- baseline and candidate git revisions
- active admin themes
- mode + baseline refresh flag

All of these are captured in run metadata.

## Draft Bug Report Generation

Element dashboard generation creates draft bugs for flagged deltas:

- `report/<run-id>/element-compare/bug-drafts-index.md`
- `report/<run-id>/element-compare/bug-drafts-by-css.md`
- `report/<run-id>/element-compare/bug-drafts.csv`
- `report/<run-id>/element-compare/bug-drafts/*.md`

Each draft includes:

1. Summary
2. Reproduction steps with baseline/candidate URLs
3. Selector under test
4. Expected vs actual
5. Evidence paths
6. Likely CSS source files and matched candidate CSS selectors

Interaction capture also explicitly probes these button patterns and records whether they were found/visible/clicked in `interaction-summary.json`:

1. `button.toolbar-link.toolbar-link--system-admin-structure` (toolbar collapse/expand)
2. `button.trigger.focusable` / contextual trigger buttons (pencil/config controls)

Note: some contextual trigger buttons are intentionally visually hidden until specific hover/focus conditions; those may be recorded as found but not visible/clicked.

## Publishing Updates

Use one command to stage only harness content (`src`, `report`, `screenshots`, `.gitignore`), commit, rebase, and push:

```bash
./src/publish-report-updates.sh --skip-run --label docs-only
```

Or run + publish in one go:

```bash
./src/publish-report-updates.sh --mode normal --label css-pass-1 --refresh-baseline false
```

## Troubleshooting

### Candidate site returns 500

- Check PHP compatibility in candidate branch
- Drupal 12 dev may require newer PHP than Drupal 11

### VRT auth failures

- Ensure admin credentials are valid (`admin` / `admin` by default in scripts)
- Ensure `/user/login` works in both projects
- Harness scripts now fail fast if login is still on `/user/login` after submit
- Harness scripts fail fast on admin route `401/403` or `Access denied` page headings
- If lockouts occur after failed attempts, clear flood tables in both projects:

```bash
cd drupal-11.3.10 && ddev mysql -e "TRUNCATE flood;"
cd ../drupal-git && ddev mysql -e "TRUNCATE flood;"
```

### Too many false positives

- Keep baseline frozen (`refresh-baseline=false`)
- Re-run once to confirm repeatability
- Review masking rules in each project's `hide-dynamic.css`

### Drush issues on Drupal 12 dev

- This workflow primarily uses form-based auth fallback and Playwright flows
- Drush compatibility can vary with Symfony/PHP in bleeding-edge branches

### Cannot use `ddev drush uli` on `drupal-git`

Use direct login credentials for this harness:

- Username: `admin`
- Password: `admin`
- Login URL: `http://drupal-git.ddev.site:8080/user/login`

If the password does not work, reset it from the project root:

```bash
cd drupal-git
HASH=$(ddev exec php -r 'echo password_hash("admin", PASSWORD_DEFAULT);')
ddev mysql -e "UPDATE users_field_data SET pass='${HASH}' WHERE uid=1;"
```

You can also request a one-time login email token from:

- `http://drupal-git.ddev.site:8080/user/password`
- default admin email in this setup: `admin@example.test`

If you want one-time login links without email dependency, install Drush locally in `drupal-git`:

```bash
cd drupal-git
ddev composer require drush/drush --no-interaction
ddev drush uli --name=admin
```

If login attempts were rate-limited, clear Drupal flood control:

```bash
cd drupal-git
ddev mysql -e "TRUNCATE flood;"
```

## License

See [LICENSE](LICENSE).
