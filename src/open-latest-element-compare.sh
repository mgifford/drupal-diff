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
SUMMARY_HTML="$LATEST_RUN/issue-3592061-summary.html"
SUMMARY_MD="$LATEST_RUN/issue-3592061-summary.md"
BUG_INDEX_HTML="$LATEST_RUN/element-compare/bug-drafts-index.html"
BUG_INDEX_MD="$LATEST_RUN/element-compare/bug-drafts-index.md"

if [[ -f "$DASHBOARD" ]]; then
  open "$DASHBOARD"
  echo "Opened: $DASHBOARD"
else
  echo "Missing dashboard: $DASHBOARD"
  exit 1
fi

if [[ -f "$SUMMARY_HTML" ]]; then
  open "$SUMMARY_HTML"
  echo "Opened: $SUMMARY_HTML"
elif [[ -f "$SUMMARY_MD" ]]; then
  open "$SUMMARY_MD"
  echo "Opened: $SUMMARY_MD"
fi

if [[ -f "$BUG_INDEX_HTML" ]]; then
  open "$BUG_INDEX_HTML"
  echo "Opened: $BUG_INDEX_HTML"
elif [[ -f "$BUG_INDEX_MD" ]]; then
  open "$BUG_INDEX_MD"
  echo "Opened: $BUG_INDEX_MD"
fi
