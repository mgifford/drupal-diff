#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
MODE="normal"
LABEL="publish"
REFRESH_BASELINE="false"
SKIP_RUN="false"

usage() {
  cat <<EOF
Usage: $0 [options]

Options:
  --mode <normal|full>         VRT mode to run before publish (default: normal)
  --label <text>               Run label for VRT metadata and commit message (default: publish)
  --refresh-baseline <bool>    true|false, whether to regenerate baseline (default: false)
  --skip-run                   Skip VRT run and only commit/push current src/report/screenshots changes
  -h, --help                   Show this help

Examples:
  $0
  $0 --mode full --label css-pass-2 --refresh-baseline false
  $0 --skip-run --label docs-and-reports
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --mode)
      MODE="${2:-}"
      shift 2
      ;;
    --label)
      LABEL="${2:-}"
      shift 2
      ;;
    --refresh-baseline)
      REFRESH_BASELINE="${2:-}"
      shift 2
      ;;
    --skip-run)
      SKIP_RUN="true"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1"
      usage
      exit 1
      ;;
  esac
done

if [[ "$MODE" != "normal" && "$MODE" != "full" ]]; then
  echo "--mode must be normal or full"
  exit 1
fi

if [[ "$REFRESH_BASELINE" != "true" && "$REFRESH_BASELINE" != "false" ]]; then
  echo "--refresh-baseline must be true or false"
  exit 1
fi

if [[ ! -d "$ROOT_DIR/.git" ]]; then
  echo "Not a git repository: $ROOT_DIR"
  exit 1
fi

if [[ "$SKIP_RUN" != "true" ]]; then
  echo "[1/4] Running VRT pipeline"
  "$ROOT_DIR/src/run-admin-vrt-compare.sh" "$MODE" "$LABEL" "$REFRESH_BASELINE" || true

  echo "[2/4] Regenerating issue summaries for latest run"
  latest_run="$(find "$ROOT_DIR/report" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"
  if [[ -n "$latest_run" ]]; then
    "$ROOT_DIR/src/export-issue-report.sh" "$latest_run" || true
    "$ROOT_DIR/src/generate-element-compare.sh" || true
  fi
else
  echo "[1/4] Skipping VRT run by request"
fi

cd "$ROOT_DIR"

echo "[3/4] Staging publishable paths"
git add .gitignore src report screenshots

if git diff --cached --quiet; then
  echo "No staged changes to commit."
  exit 0
fi

commit_msg="Publish VRT updates (${LABEL}) $(date -u +%Y-%m-%dT%H:%M:%SZ)"
git commit -m "$commit_msg"

echo "[4/4] Pull/rebase and push"
git pull --rebase origin main
git push origin main

echo "Publish complete."
