#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$ROOT_DIR/report"

LATEST_RUN="$(find "$REPORT_DIR" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"
if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories found in $REPORT_DIR"
  exit 1
fi

RUN_ID="$(basename "$LATEST_RUN")"
TEST_RESULTS_DIR="$LATEST_RUN/test-results"
HTML_OUT="$LATEST_RUN/side-by-side-vrt-diffs.html"
SUMMARY_MD="$LATEST_RUN/issue-3592061-summary.md"

if [[ ! -d "$TEST_RESULTS_DIR" ]]; then
  echo "No test-results directory found in $LATEST_RUN"
  exit 1
fi

cat > "$HTML_OUT" <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>VRT Diffs Side-by-Side - $RUN_ID</title>
  <style>
    body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; margin: 0; background: #f4f6f8; color: #222; }
    header { position: sticky; top: 0; background: #1f3b57; color: #fff; padding: 12px 16px; z-index: 2; }
    .meta { font-size: 14px; opacity: 0.95; }
    main { padding: 16px; }
    table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 1px 4px rgba(0,0,0,0.08); }
    th, td { border: 1px solid #d9e0e7; vertical-align: top; padding: 8px; }
    th { background: #e9eef4; text-align: left; }
    .name { font-weight: 700; min-width: 280px; }
    img { width: 100%; height: auto; border: 1px solid #ccd6e0; background: #fff; }
    .small { font-size: 12px; color: #556; margin-top: 4px; word-break: break-all; }
  </style>
</head>
<body>
  <header>
    <div><strong>VRT Diff Review: Expected vs Actual vs Diff</strong></div>
    <div class="meta">Run: $RUN_ID</div>
  </header>
  <main>
    <table>
      <thead>
        <tr>
          <th>Case</th>
          <th>Drupal 11 with Gin</th>
          <th>Drupal 12 with Admin Theme</th>
          <th>Diff</th>
        </tr>
      </thead>
      <tbody>
EOF

while IFS= read -r -d '' case_dir; do
  case_name="$(basename "$case_dir")"

  diff_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-diff.png' | head -n 1 || true)"
  expected_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-expected.png' | head -n 1 || true)"
  actual_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-actual.png' | head -n 1 || true)"
  error_context="$(find "$case_dir" -maxdepth 1 -type f -name 'error-context.md' | head -n 1 || true)"

  [[ -z "$diff_file" ]] && continue

  expected_rel="${expected_file#$ROOT_DIR/}"
  actual_rel="${actual_file#$ROOT_DIR/}"
  diff_rel="${diff_file#$ROOT_DIR/}"
  error_rel=""
  if [[ -n "$error_context" ]]; then
    error_rel="${error_context#$ROOT_DIR/}"
  fi

  cat >> "$HTML_OUT" <<EOF
        <tr>
          <td class="name">
            <div>$case_name</div>
            <div class="small">$diff_rel</div>
            $( [[ -n "$error_rel" ]] && echo "<div class=\"small\"><a href=\"../../$error_rel\">error-context.md</a></div>" )
          </td>
          <td>$( [[ -n "$expected_file" ]] && echo "<img src=\"../../$expected_rel\" alt=\"Expected for $case_name\" />" || echo "<em>Missing expected image</em>" )</td>
          <td>$( [[ -n "$actual_file" ]] && echo "<img src=\"../../$actual_rel\" alt=\"Actual for $case_name\" />" || echo "<em>Missing actual image</em>" )</td>
          <td><img src="../../$diff_rel" alt="Diff for $case_name" /></td>
        </tr>
EOF
done < <(find "$TEST_RESULTS_DIR" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

cat >> "$HTML_OUT" <<EOF
      </tbody>
    </table>
  </main>
</body>
</html>
EOF

open "$HTML_OUT"
if [[ -f "$SUMMARY_MD" ]]; then
  open "$SUMMARY_MD"
fi

echo "Opened VRT side-by-side diff viewer: $HTML_OUT"
echo "Opened grouped issue summary: $SUMMARY_MD"
