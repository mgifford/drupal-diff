#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BASELINE_DIR="$ROOT_DIR/drupal-11.3.10"
CANDIDATE_DIR="$ROOT_DIR/drupal-git"
SHARED_SCREENSHOTS_DIR="$ROOT_DIR/screenshots"
SHARED_REPORT_DIR="$ROOT_DIR/report"
INTERACTION_SCRIPT="$ROOT_DIR/src/capture-admin-interactions.sh"
ISSUE_EXPORT_SCRIPT="$ROOT_DIR/src/export-issue-report.sh"
ADDON_OVERRIDE_SCRIPT="$ROOT_DIR/src/apply-vrt-addon-overrides.sh"
MODE="${1:-normal}"
RUN_LABEL="${2:-manual}"
REFRESH_BASELINE="${3:-false}"
COLOR_MODE="${4:-both}"

if [[ "$MODE" != "normal" && "$MODE" != "full" ]]; then
  echo "Usage: $0 [normal|full] [run-label] [refresh-baseline:true|false] [light|dark|both]"
  exit 1
fi

if [[ "$REFRESH_BASELINE" != "true" && "$REFRESH_BASELINE" != "false" ]]; then
  echo "refresh-baseline must be true or false"
  exit 1
fi

if [[ "$COLOR_MODE" != "light" && "$COLOR_MODE" != "dark" && "$COLOR_MODE" != "both" ]]; then
  echo "color-mode must be one of: light, dark, both"
  exit 1
fi

MODE_FLAG="--$MODE"
RUN_ID="$(date +%Y%m%d-%H%M%S)"
RUN_REPORT_DIR="$SHARED_REPORT_DIR/$RUN_ID"
RUN_SCREENSHOT_DIR="$SHARED_SCREENSHOTS_DIR/$RUN_ID"
RUN_INDEX_FILE="$SHARED_REPORT_DIR/run-index.csv"
BASELINE_REV="$(git -C "$BASELINE_DIR" rev-parse --short HEAD 2>/dev/null || echo n/a)"
CANDIDATE_REV="$(git -C "$CANDIDATE_DIR" rev-parse --short HEAD 2>/dev/null || echo n/a)"
BASELINE_THEME="$(cd "$BASELINE_DIR" && ddev mysql -Nse "select data from config where name='system.theme';" 2>/dev/null | sed -n "s/.*s:5:\"admin\";s:[0-9]*:\"\([a-z0-9_\-]*\)\".*/\1/p" | head -n1)"
CANDIDATE_THEME="$(cd "$CANDIDATE_DIR" && ddev mysql -Nse "select data from config where name='system.theme';" 2>/dev/null | sed -n "s/.*s:5:\"admin\";s:[0-9]*:\"\([a-z0-9_\-]*\)\".*/\1/p" | head -n1)"

build_projects_args() {
  local mode="$1"
  local color_mode="$2"
  local -a args=()

  if [[ "$mode" == "normal" ]]; then
    case "$color_mode" in
      light)
        args+=(--project=narrow --project=wide)
        ;;
      dark)
        args+=(--project=narrow-dark --project=wide-dark)
        ;;
      both)
        args+=(--project=narrow --project=wide --project=narrow-dark --project=wide-dark)
        ;;
    esac
  else
    case "$color_mode" in
      light)
        args+=(--project=narrow --project=mid --project=wide --project=rtl-narrow --project=rtl-mid --project=rtl-wide)
        ;;
      dark)
        args+=(--project=narrow-dark --project=mid-dark --project=wide-dark --project=rtl-narrow-dark --project=rtl-mid-dark --project=rtl-wide-dark)
        ;;
      both)
        ;;
    esac
  fi

  printf '%s\n' "${args[@]}"
}

mapfile -t PROJECT_ARGS < <(build_projects_args "$MODE" "$COLOR_MODE")

mkdir -p "$RUN_REPORT_DIR" "$RUN_SCREENSHOT_DIR"

cat > "$RUN_REPORT_DIR/run-metadata.txt" <<EOF
run_id: $RUN_ID
run_label: $RUN_LABEL
mode: $MODE
refresh_baseline: $REFRESH_BASELINE
color_mode: $COLOR_MODE
baseline_project: $BASELINE_DIR
baseline_revision: $BASELINE_REV
baseline_admin_theme: ${BASELINE_THEME:-unknown}
candidate_project: $CANDIDATE_DIR
candidate_revision: $CANDIDATE_REV
candidate_admin_theme: ${CANDIDATE_THEME:-unknown}
timestamp_utc: $(date -u +%Y-%m-%dT%H:%M:%SZ)
EOF

echo "[1/7] Starting DDEV projects"
(cd "$BASELINE_DIR" && ddev start >/dev/null)
(cd "$CANDIDATE_DIR" && ddev start >/dev/null)

echo "[2/7] Ensuring admin VRT add-on is installed"
if [[ ! -d "$BASELINE_DIR/.ddev/drupal-admin-vrt" ]]; then
  (cd "$BASELINE_DIR" && ddev add-on install https://github.com/mherchel/ddev-drupal-admin-vrt/tarball/main)
fi
if [[ ! -d "$CANDIDATE_DIR/.ddev/drupal-admin-vrt" ]]; then
  (cd "$CANDIDATE_DIR" && ddev add-on install https://github.com/mherchel/ddev-drupal-admin-vrt/tarball/main)
fi

# Restart once to apply add-on commands if newly installed.
(cd "$BASELINE_DIR" && ddev restart >/dev/null)
(cd "$CANDIDATE_DIR" && ddev restart >/dev/null)

if [[ -x "$ADDON_OVERRIDE_SCRIPT" ]]; then
  echo "[2.5/7] Applying tracked VRT add-on overrides"
  "$ADDON_OVERRIDE_SCRIPT"
fi

echo "[3/7] Installing Node/Playwright dependencies in both projects"
(cd "$BASELINE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npm install >/dev/null)
(cd "$BASELINE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npx playwright install --with-deps chromium >/dev/null)
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npm install >/dev/null)
(cd "$CANDIDATE_DIR" && ddev exec -d /var/www/html/.ddev/drupal-admin-vrt npx playwright install --with-deps chromium >/dev/null)

if [[ "$REFRESH_BASELINE" == "true" ]] || [[ ! -d "$BASELINE_DIR/__screenshots__" ]] || [[ -z "$(find "$BASELINE_DIR/__screenshots__" -name '*.png' -print -quit 2>/dev/null)" ]]; then
  echo "[4/7] Capturing baseline screenshots (Drupal 11 + Gin)"
  if [[ ${#PROJECT_ARGS[@]} -gt 0 ]]; then
    (cd "$BASELINE_DIR" && TZ=UTC LANG=C.UTF-8 LC_ALL=C.UTF-8 DRUPAL_ADMIN_USER=admin DRUPAL_ADMIN_PASS=adminadminadmin ddev vrt-update "${PROJECT_ARGS[@]}")
  else
    (cd "$BASELINE_DIR" && TZ=UTC LANG=C.UTF-8 LC_ALL=C.UTF-8 DRUPAL_ADMIN_USER=admin DRUPAL_ADMIN_PASS=adminadminadmin ddev vrt-update "$MODE_FLAG")
  fi
else
  echo "[4/7] Using existing baseline screenshots (set refresh-baseline=true to regenerate)"
fi

mkdir -p "$RUN_SCREENSHOT_DIR/baseline"
rsync -a --delete "$BASELINE_DIR/__screenshots__/" "$RUN_SCREENSHOT_DIR/baseline/"

echo "[5/7] Syncing baseline into candidate workspace"
rm -rf "$CANDIDATE_DIR/__screenshots__"
mkdir -p "$CANDIDATE_DIR/__screenshots__"
rsync -a --delete "$RUN_SCREENSHOT_DIR/baseline/" "$CANDIDATE_DIR/__screenshots__/"

echo "[6/7] Running candidate comparison (Drupal 12 core admin)"
set +e
if [[ ${#PROJECT_ARGS[@]} -gt 0 ]]; then
  (cd "$CANDIDATE_DIR" && TZ=UTC LANG=C.UTF-8 LC_ALL=C.UTF-8 DRUPAL_ADMIN_USER=admin DRUPAL_ADMIN_PASS=adminadminadmin ddev vrt "${PROJECT_ARGS[@]}" --no-bail)
else
  (cd "$CANDIDATE_DIR" && TZ=UTC LANG=C.UTF-8 LC_ALL=C.UTF-8 DRUPAL_ADMIN_USER=admin DRUPAL_ADMIN_PASS=adminadminadmin ddev vrt "$MODE_FLAG" --no-bail)
fi
VRT_EXIT_CODE=$?
set -e

echo "[7/7] Collecting report artifacts"
if [[ -d "$CANDIDATE_DIR/test-results" ]]; then
  rsync -a "$CANDIDATE_DIR/test-results/" "$RUN_REPORT_DIR/test-results/" 2>/dev/null || true
fi
if [[ -d "$CANDIDATE_DIR/playwright-report" ]]; then
  rsync -a "$CANDIDATE_DIR/playwright-report/" "$RUN_REPORT_DIR/playwright-report/" 2>/dev/null || true
fi

echo "[8/10] Capturing interaction screenshots (focus/hover/modal probes)"
if [[ -x "$INTERACTION_SCRIPT" ]]; then
  set +e
  "$INTERACTION_SCRIPT" "$RUN_ID" "$RUN_SCREENSHOT_DIR" "$COLOR_MODE"
  INTERACTION_EXIT_CODE=$?
  set -e
  if [[ $INTERACTION_EXIT_CODE -ne 0 ]]; then
    echo "Interaction capture completed with warnings (exit: $INTERACTION_EXIT_CODE)."
  fi
else
  echo "Skipping interaction capture (script not executable): $INTERACTION_SCRIPT"
fi

echo "[9/10] Exporting issue-ready diff summaries"
if [[ -x "$ISSUE_EXPORT_SCRIPT" ]]; then
  set +e
  "$ISSUE_EXPORT_SCRIPT" "$RUN_REPORT_DIR"
  ISSUE_EXPORT_EXIT_CODE=$?
  set -e
  if [[ $ISSUE_EXPORT_EXIT_CODE -ne 0 ]]; then
    echo "Issue export completed with warnings (exit: $ISSUE_EXPORT_EXIT_CODE)."
  fi
else
  echo "Skipping issue export (script not executable): $ISSUE_EXPORT_SCRIPT"
fi

echo "[10/10] Updating run manifest index"
if [[ ! -f "$RUN_INDEX_FILE" ]]; then
  echo "timestamp_utc,run_id,run_label,mode,refresh_baseline,baseline_revision,candidate_revision,baseline_admin_theme,candidate_admin_theme,vrt_exit_code,report_dir" > "$RUN_INDEX_FILE"
fi
echo "$(date -u +%Y-%m-%dT%H:%M:%SZ),$RUN_ID,$RUN_LABEL,$MODE,$REFRESH_BASELINE,$BASELINE_REV,$CANDIDATE_REV,${BASELINE_THEME:-unknown},${CANDIDATE_THEME:-unknown},$VRT_EXIT_CODE,$RUN_REPORT_DIR" >> "$RUN_INDEX_FILE"

cat <<EOF
Done.
Run ID: $RUN_ID
Run label: $RUN_LABEL
Baseline revision: $BASELINE_REV (theme: ${BASELINE_THEME:-unknown})
Candidate revision: $CANDIDATE_REV (theme: ${CANDIDATE_THEME:-unknown})
Baseline screenshots: $RUN_SCREENSHOT_DIR/baseline
Diff artifacts: $RUN_REPORT_DIR
Run metadata: $RUN_REPORT_DIR/run-metadata.txt
Issue CSV: $RUN_REPORT_DIR/issue-3592061-summary.csv
Issue Markdown: $RUN_REPORT_DIR/issue-3592061-summary.md
Run index: $RUN_INDEX_FILE
Open interactive report from candidate project with:
  cd $CANDIDATE_DIR && ddev vrt-report
EOF

if [[ $VRT_EXIT_CODE -ne 0 ]]; then
  echo "VRT completed with visual diffs or test failures (exit: $VRT_EXIT_CODE)."
fi

exit $VRT_EXIT_CODE
