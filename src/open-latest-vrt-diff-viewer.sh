#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$ROOT_DIR/report"

LATEST_RUN="$(find "$REPORT_DIR" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort -r | while read -r d; do [[ -d "$d/test-results" ]] && { echo "$d"; break; }; done)"
if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories with test-results found in $REPORT_DIR"
  exit 1
fi

RUN_ID="$(basename "$LATEST_RUN")"
TEST_RESULTS_DIR="$LATEST_RUN/test-results"
HTML_OUT="$LATEST_RUN/side-by-side-vrt-diffs.html"
SUMMARY_HTML="$LATEST_RUN/issue-3592061-summary.html"
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
  <title>VRT Comparison Viewer - $RUN_ID</title>
  <style>
    body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; margin: 0; background: #f4f6f8; color: #222; }
    header { position: sticky; top: 0; background: #1f3b57; color: #fff; padding: 12px 16px; z-index: 2; }
    .meta { font-size: 14px; opacity: 0.95; }
    main { padding: 16px; }
    .controls { display: grid; grid-template-columns: repeat(4, minmax(180px, 1fr)); gap: 8px; margin-bottom: 12px; }
    select, input { padding: 8px; border: 1px solid #bcccdc; border-radius: 6px; }
    table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 1px 4px rgba(0,0,0,0.08); }
    th, td { border: 1px solid #d9e0e7; vertical-align: top; padding: 8px; }
    th { background: #e9eef4; text-align: left; }
    .name { font-weight: 700; min-width: 280px; }
    img { width: 100%; height: auto; border: 1px solid #ccd6e0; background: #fff; }
    .small { font-size: 12px; color: #556; margin-top: 4px; word-break: break-all; }
    .hidden { display: none; }
  </style>
</head>
<body>
  <header>
    <div><strong>VRT Comparison Viewer: Diff + Side-by-Side</strong></div>
    <div class="meta">Run: $RUN_ID</div>
  </header>
  <main>
    <div class="controls">
      <select id="viewportFilter">
        <option value="">All viewports</option>
        <option value="narrow">Mobile (narrow)</option>
        <option value="wide">Desktop (wide)</option>
        <option value="mid">Tablet (mid)</option>
        <option value="unknown">Unknown</option>
      </select>
      <select id="modeFilter">
        <option value="">All color modes</option>
        <option value="light">Light</option>
        <option value="dark">Dark</option>
        <option value="unknown">Unknown</option>
      </select>
      <select id="viewFilter">
        <option value="both">Show both formats</option>
        <option value="diff">Diff only</option>
        <option value="side">Side-by-side only</option>
      </select>
      <input id="textFilter" placeholder="Search case/route" />
    </div>

    <table>
      <thead>
        <tr>
          <th>Case</th>
          <th>Diff</th>
          <th>Drupal 11 with Gin</th>
          <th>Drupal 12 with Admin Theme</th>
        </tr>
      </thead>
      <tbody id="resultsBody">
EOF

while IFS= read -r -d '' case_dir; do
  case_name="$(basename "$case_dir")"

  diff_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-diff.png' | head -n 1 || true)"
  expected_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-expected.png' | head -n 1 || true)"
  actual_file="$(find "$case_dir" -maxdepth 1 -type f -name '*-actual.png' | head -n 1 || true)"
  error_context="$(find "$case_dir" -maxdepth 1 -type f -name 'error-context.md' | head -n 1 || true)"

  [[ -z "$diff_file" ]] && continue

  viewport="unknown"
  if [[ "$case_name" == *-narrow* ]]; then
    viewport="narrow"
  elif [[ "$case_name" == *-wide* ]]; then
    viewport="wide"
  elif [[ "$case_name" == *-mid* ]]; then
    viewport="mid"
  fi

  color_mode="unknown"
  if [[ "$case_name" == *-dark* ]]; then
    color_mode="dark"
  elif [[ "$case_name" == *-light* ]]; then
    color_mode="light"
  fi

  expected_rel="${expected_file#$ROOT_DIR/}"
  actual_rel="${actual_file#$ROOT_DIR/}"
  diff_rel="${diff_file#$ROOT_DIR/}"
  error_rel=""
  if [[ -n "$error_context" ]]; then
    error_rel="${error_context#$ROOT_DIR/}"
  fi

  cat >> "$HTML_OUT" <<EOF
        <tr data-viewport="$viewport" data-mode="$color_mode">
          <td class="name">
            <div>$case_name</div>
            <div class="small">viewport: $viewport | mode: $color_mode</div>
            <div class="small">$diff_rel</div>
            $( [[ -n "$error_rel" ]] && echo "<div class=\"small\"><a href=\"../../$error_rel\">error-context.md</a></div>" )
          </td>
          <td class="col-diff"><img src="../../$diff_rel" alt="Diff for $case_name" /></td>
          <td class="col-side">$( [[ -n "$expected_file" ]] && echo "<img src=\"../../$expected_rel\" alt=\"Expected for $case_name\" />" || echo "<em>Missing expected image</em>" )</td>
          <td class="col-side">$( [[ -n "$actual_file" ]] && echo "<img src=\"../../$actual_rel\" alt=\"Actual for $case_name\" />" || echo "<em>Missing actual image</em>" )</td>
        </tr>
EOF
done < <(find "$TEST_RESULTS_DIR" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

cat >> "$HTML_OUT" <<EOF
      </tbody>
    </table>

    <script>
      const rows = [...document.querySelectorAll('#resultsBody tr')];
      const viewportFilter = document.getElementById('viewportFilter');
      const modeFilter = document.getElementById('modeFilter');
      const viewFilter = document.getElementById('viewFilter');
      const textFilter = document.getElementById('textFilter');

      function applyFilters() {
        const viewport = viewportFilter.value;
        const mode = modeFilter.value;
        const view = viewFilter.value;
        const txt = textFilter.value.toLowerCase().trim();

        document.querySelectorAll('.col-diff').forEach((c) => c.classList.toggle('hidden', view === 'side'));
        document.querySelectorAll('.col-side').forEach((c) => c.classList.toggle('hidden', view === 'diff'));

        for (const row of rows) {
          const matchesViewport = !viewport || row.dataset.viewport === viewport;
          const matchesMode = !mode || row.dataset.mode === mode;
          const matchesText = !txt || row.textContent.toLowerCase().includes(txt);
          row.style.display = (matchesViewport && matchesMode && matchesText) ? '' : 'none';
        }
      }

      viewportFilter.addEventListener('change', applyFilters);
      modeFilter.addEventListener('change', applyFilters);
      viewFilter.addEventListener('change', applyFilters);
      textFilter.addEventListener('input', applyFilters);
      applyFilters();
    </script>
  </main>
</body>
</html>
EOF

open "$HTML_OUT"
if [[ -f "$SUMMARY_HTML" ]]; then
  open "$SUMMARY_HTML"
elif [[ -f "$SUMMARY_MD" ]]; then
  open "$SUMMARY_MD"
fi

echo "Opened VRT side-by-side diff viewer: $HTML_OUT"
if [[ -f "$SUMMARY_HTML" ]]; then
  echo "Opened grouped issue summary: $SUMMARY_HTML"
else
  echo "Opened grouped issue summary: $SUMMARY_MD"
fi
