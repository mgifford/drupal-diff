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

Quick links for the most recent published run (`20260527-160939`):

- [Element Compare Dashboard](https://mgifford.github.io/drupal-diff/report/20260527-160939/element-compare/element-compare-dashboard.html)
- [Bug Drafts Index](report/20260527-160939/element-compare/bug-drafts-index.md)
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
- [src/export-issue-report.sh](src/export-issue-report.sh): CSV/Markdown issue summary export
- [src/publish-report-updates.sh](src/publish-report-updates.sh): One-command commit/push of scripts/reports/screenshots

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
3. Use core admin theme (currently `claro` unless your branch changes it)

### 3. Ensure both projects run concurrently in DDEV

The workflow expects both to be accessible:

- `http://drupal-11.3.10.ddev.site`
- `http://drupal-git.ddev.site:8080`

If ports conflict, adjust `.ddev/config.yaml` in candidate project (for example `8080/8443`).

## Quick Start (Reproducible)

From repo root:

```bash
./src/run-admin-vrt-compare.sh normal first-run false
```

Arguments:

1. `mode`: `normal` or `full`
2. `run-label`: arbitrary text for traceability
3. `refresh-baseline`: `true` or `false`

Behavior:

1. Starts both DDEV projects
2. Ensures VRT add-on + Playwright dependencies
3. Captures or reuses baseline screenshots
4. Runs candidate comparison
5. Collects artifacts
6. Captures interaction screenshots
7. Exports issue summaries
8. Updates [report/run-index.csv](report/run-index.csv)

## Daily Workflow

### A) Compare current state

```bash
./src/run-admin-vrt-compare.sh normal css-check false
```

### B) After applying a patch

```bash
./src/rerun-after-patch.sh normal patch-<ticket-or-branch>
```

### C) Open viewers

```bash
./src/open-latest-vrt-diff-viewer.sh
./src/open-latest-side-by-side.sh
./src/open-latest-element-compare.sh
```

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
7. `report/<run-id>/element-compare/bug-drafts/*.md`
8. `screenshots/<run-id>/interactions/baseline`
9. `screenshots/<run-id>/interactions/candidate`

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
- `report/<run-id>/element-compare/bug-drafts.csv`
- `report/<run-id>/element-compare/bug-drafts/*.md`

Each draft includes:

1. Summary
2. Reproduction steps with baseline/candidate URLs
3. Selector under test
4. Expected vs actual
5. Evidence paths

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

- Ensure admin credentials are valid (`admin` / `adminadminadmin` by default in scripts)
- Ensure `/user/login` works in both projects

### Too many false positives

- Keep baseline frozen (`refresh-baseline=false`)
- Re-run once to confirm repeatability
- Review masking rules in each project's `hide-dynamic.css`

### Drush issues on Drupal 12 dev

- This workflow primarily uses form-based auth fallback and Playwright flows
- Drush compatibility can vary with Symfony/PHP in bleeding-edge branches

## License

See [LICENSE](LICENSE).
