#!/usr/bin/env bash
set -euo pipefail

RUN_REPORT_DIR="${1:-}"
if [[ -z "$RUN_REPORT_DIR" || ! -d "$RUN_REPORT_DIR" ]]; then
  echo "Usage: $0 <run-report-dir>"
  exit 1
fi

CSV_OUT="$RUN_REPORT_DIR/issue-3592061-summary.csv"
MD_OUT="$RUN_REPORT_DIR/issue-3592061-summary.md"
RUN_ID="$(basename "$RUN_REPORT_DIR")"
PUBLISHED_BASE="https://mgifford.github.io/drupal-diff/report/$RUN_ID"

relative_from_run_dir() {
  local path="$1"
  path="${path#./}"
  path="${path#${RUN_REPORT_DIR}/}"
  path="${path#${RUN_REPORT_DIR}}"
  path="${path#/}"
  printf '%s' "$path"
}

section_for_route() {
  local route="$1"
  case "$route" in
    content*|node/add*) echo "Content" ;;
    structure*) echo "Structure" ;;
    appearance*) echo "Appearance" ;;
    config*) echo "Configuration" ;;
    people*) echo "People" ;;
    reports*) echo "Reports" ;;
    *) echo "Other" ;;
  esac
}

echo "section,route,viewport,change_type,severity,diff_path,actual_path,expected_path,run_dir" > "$CSV_OUT"

if [[ -d "$RUN_REPORT_DIR/test-results" ]]; then
  find "$RUN_REPORT_DIR/test-results" -type f -name '*-diff.png' | sort | while IFS= read -r diff; do
    case_name="$(basename "$(dirname "$diff")")"
    viewport="unknown"
    if [[ "$case_name" == *-narrow ]]; then
      viewport="narrow"
    elif [[ "$case_name" == *-wide ]]; then
      viewport="wide"
    elif [[ "$case_name" == *-mid ]]; then
      viewport="mid"
    fi

    route="unknown"
    route="$(echo "$case_name" | sed -E 's/^vrt-//; s/-default-state.*$//; s/-/\//g')"
    section="$(section_for_route "$route")"

    actual="${diff%-diff.png}-actual.png"
    expected="${diff%-diff.png}-expected.png"

    echo "$section,$route,$viewport,visual-regression,medium,$diff,$actual,$expected,$RUN_REPORT_DIR" >> "$CSV_OUT"
  done
fi

{
  echo "# Issue 3592061 Visual Diff Summary"
  echo
  echo "Generated from: $RUN_REPORT_DIR"
  echo "Published run base: $PUBLISHED_BASE"
  echo
  for section in "Content" "Structure" "Appearance" "Configuration" "People" "Reports" "Other"; do
    section_count="$(awk -F',' -v s="$section" 'NR>1 && $1==s {c++} END {print c+0}' "$CSV_OUT")"
    if [[ "$section_count" -eq 0 ]]; then
      continue
    fi

    echo "## $section ($section_count)"
    echo
    echo "| Route | Viewport | Change Type | Severity | Diff | Actual | Expected |"
    echo "|---|---|---|---|---|---|---|"
    awk -F',' -v s="$section" 'NR>1 && $1==s {print $0}' "$CSV_OUT" | while IFS=',' read -r _section route viewport change_type severity diff_path actual_path expected_path run_dir; do
      diff_rel="$(relative_from_run_dir "$diff_path")"
      actual_rel="$(relative_from_run_dir "$actual_path")"
      expected_rel="$(relative_from_run_dir "$expected_path")"
      diff_pub="$PUBLISHED_BASE/$diff_rel"
      actual_pub="$PUBLISHED_BASE/$actual_rel"
      expected_pub="$PUBLISHED_BASE/$expected_rel"
      echo "| $route | $viewport | $change_type | $severity | $diff_pub | $actual_pub | $expected_pub |"
    done
    echo
  done
} > "$MD_OUT"
