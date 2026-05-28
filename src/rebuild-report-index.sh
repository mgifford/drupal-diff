#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$ROOT_DIR/report"
OUT_HTML="$REPORT_DIR/index.html"

if [[ ! -d "$REPORT_DIR" ]]; then
  echo "Missing report directory: $REPORT_DIR"
  exit 1
fi

html_escape() {
  local s="$1"
  s="${s//&/&amp;}"
  s="${s//</&lt;}"
  s="${s//>/&gt;}"
  s="${s//\"/&quot;}"
  printf '%s' "$s"
}

run_has_valid_data() {
  local run_dir="$1"
  [[ -f "$run_dir/playwright-report/index.html" ]] && return 0
  [[ -f "$run_dir/side-by-side-vrt-diffs.html" ]] && return 0
  [[ -f "$run_dir/side-by-side-interactions.html" ]] && return 0
  [[ -f "$run_dir/element-compare/element-compare-dashboard.html" ]] && return 0
  [[ -f "$run_dir/issue-3592061-summary.html" ]] && return 0
  [[ -f "$run_dir/issue-3592061-summary.md" ]] && return 0
  [[ -f "$run_dir/issue-3592061-summary.csv" ]] && return 0
  return 1
}

extract_meta_value() {
  local file="$1"
  local key="$2"
  [[ -f "$file" ]] || return 0
  grep -E "^${key}:" "$file" | head -n1 | sed -E "s/^${key}:[[:space:]]*//" || true
}

{
  cat <<'HTML_TOP'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Drupal Diff Report Index</title>
  <style>
    :root {
      --bg: #f7f8fc;
      --panel: #ffffff;
      --text: #1e2230;
      --muted: #636d83;
      --accent: #0b57d0;
      --line: #d7ddec;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", Helvetica, Arial, sans-serif;
      color: var(--text);
      background: var(--bg);
    }
    main {
      max-width: 1100px;
      margin: 0 auto;
      padding: 28px 20px 44px;
    }
    h1 { margin: 0 0 10px; }
    p { margin: 0 0 14px; color: var(--muted); }
    .run {
      background: var(--panel);
      border: 1px solid var(--line);
      border-radius: 12px;
      padding: 14px 16px;
      margin: 12px 0;
    }
    .run h2 {
      font-size: 1.05rem;
      margin: 0 0 8px;
    }
    .meta {
      font-size: 0.92rem;
      color: var(--muted);
      margin-bottom: 8px;
    }
    ul { margin: 0; padding-left: 18px; }
    li { margin: 7px 0; }
    a { color: var(--accent); text-decoration: none; font-weight: 600; }
    a:hover, a:focus { text-decoration: underline; }
    .top-links { margin-top: 18px; }
  </style>
</head>
<body>
  <main>
    <h1>Published HTML Reports</h1>
    <p>
      This page is generated from report folders that contain valid run artifacts.
      Incomplete runs are excluded.
    </p>
HTML_TOP

  found=0
  while IFS= read -r run_id; do
    [[ -n "$run_id" ]] || continue
    run_dir="$REPORT_DIR/$run_id"
    if ! run_has_valid_data "$run_dir"; then
      continue
    fi

    found=1
    metadata_file="$run_dir/run-metadata.txt"
    run_label="$(extract_meta_value "$metadata_file" "run_label")"
    mode="$(extract_meta_value "$metadata_file" "mode")"
    color_mode="$(extract_meta_value "$metadata_file" "color_mode")"

    printf '    <section class="run">\n'
    printf '      <h2>Run %s</h2>\n' "$(html_escape "$run_id")"

    meta_parts=()
    [[ -n "$run_label" ]] && meta_parts+=("label: $(html_escape "$run_label")")
    [[ -n "$mode" ]] && meta_parts+=("mode: $(html_escape "$mode")")
    [[ -n "$color_mode" ]] && meta_parts+=("color: $(html_escape "$color_mode")")

    if [[ ${#meta_parts[@]} -gt 0 ]]; then
      printf '      <div class="meta">%s</div>\n' "$(IFS=' | '; echo "${meta_parts[*]}")"
    fi

    printf '      <ul>\n'

    [[ -f "$run_dir/element-compare/element-compare-dashboard.html" ]] && printf '        <li><a href="%s/element-compare/element-compare-dashboard.html">Element Compare Dashboard</a></li>\n' "$run_id"
    if [[ -f "$run_dir/element-compare/bug-drafts-index.html" ]]; then
      printf '        <li><a href="%s/element-compare/bug-drafts-index.html">Bug Drafts Index (HTML)</a></li>\n' "$run_id"
    elif [[ -f "$run_dir/element-compare/bug-drafts-index.md" ]]; then
      printf '        <li><a href="%s/element-compare/bug-drafts-index.md">Bug Drafts Index</a></li>\n' "$run_id"
    fi
    if [[ -f "$run_dir/element-compare/bug-drafts-by-css.html" ]]; then
      printf '        <li><a href="%s/element-compare/bug-drafts-by-css.html">Bug Drafts by CSS (HTML)</a></li>\n' "$run_id"
    elif [[ -f "$run_dir/element-compare/bug-drafts-by-css.md" ]]; then
      printf '        <li><a href="%s/element-compare/bug-drafts-by-css.md">Bug Drafts by CSS</a></li>\n' "$run_id"
    fi
    [[ -f "$run_dir/suggested-css-patches.md" ]] && printf '        <li><a href="%s/suggested-css-patches.md">Suggested CSS Patches</a></li>\n' "$run_id"
    [[ -f "$run_dir/side-by-side-vrt-diffs.html" ]] && printf '        <li><a href="%s/side-by-side-vrt-diffs.html">Side-by-side VRT Diffs</a></li>\n' "$run_id"
    [[ -f "$run_dir/side-by-side-interactions.html" ]] && printf '        <li><a href="%s/side-by-side-interactions.html">Side-by-side Interactions</a></li>\n' "$run_id"
    [[ -f "$run_dir/playwright-report/index.html" ]] && printf '        <li><a href="%s/playwright-report/index.html">Playwright HTML Report</a></li>\n' "$run_id"
    if [[ -f "$run_dir/issue-3592061-summary.html" ]]; then
      printf '        <li><a href="%s/issue-3592061-summary.html">Issue Summary (HTML)</a></li>\n' "$run_id"
    elif [[ -f "$run_dir/issue-3592061-summary.md" ]]; then
      printf '        <li><a href="%s/issue-3592061-summary.md">Issue Summary (Markdown)</a></li>\n' "$run_id"
    fi
    [[ -f "$run_dir/issue-3592061-summary.csv" ]] && printf '        <li><a href="%s/issue-3592061-summary.csv">Issue Summary (CSV)</a></li>\n' "$run_id"

    printf '      </ul>\n'
    printf '    </section>\n\n'
  done < <(find "$REPORT_DIR" -maxdepth 1 -mindepth 1 -type d -name '20*' -exec basename {} \; | sort -r)

  if [[ "$found" -eq 0 ]]; then
    cat <<'HTML_EMPTY'
    <section class="run">
      <h2>No Completed Runs Found</h2>
      <p>No valid run artifacts are currently available.</p>
    </section>

HTML_EMPTY
  fi

  cat <<'HTML_BOTTOM'
    <p class="top-links">
      <a href="../index.html">GitHub Pages Home</a> |
      <a href="https://github.com/mgifford/drupal-diff">GitHub Project</a>
    </p>
  </main>
</body>
</html>
HTML_BOTTOM
} > "$OUT_HTML"

echo "Rebuilt: $OUT_HTML"
