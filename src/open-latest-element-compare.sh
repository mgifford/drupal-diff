#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

"$ROOT_DIR/src/generate-element-compare.sh"

LATEST_RUN="$(find "$ROOT_DIR/report" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"
if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories found in $ROOT_DIR/report"
  exit 1
fi

DASHBOARD="$LATEST_RUN/element-compare/element-compare-dashboard.html"
SUMMARY="$LATEST_RUN/issue-3592061-summary.md"
BUG_INDEX="$LATEST_RUN/element-compare/bug-drafts-index.md"

if [[ -f "$DASHBOARD" ]]; then
  open "$DASHBOARD"
  echo "Opened: $DASHBOARD"
else
  echo "Missing dashboard: $DASHBOARD"
  exit 1
fi

if [[ -f "$SUMMARY" ]]; then
  open "$SUMMARY"
  echo "Opened: $SUMMARY"
fi

if [[ -f "$BUG_INDEX" ]]; then
  open "$BUG_INDEX"
  echo "Opened: $BUG_INDEX"
fi
