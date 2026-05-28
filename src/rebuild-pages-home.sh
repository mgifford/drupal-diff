#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$ROOT_DIR/report"
OUT_HTML="$ROOT_DIR/index.html"

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

format_run_human_eastern() {
  local run_id="$1"
  local run_dir="$2"

  python3 - "$run_id" "$run_dir" <<'PY'
from datetime import datetime
from zoneinfo import ZoneInfo
import sys
import os

run_id = sys.argv[1]
run_dir = sys.argv[2]
tz = ZoneInfo("America/New_York")

candidate_files = [
  os.path.join(run_dir, "element-compare", "element-compare-dashboard.html"),
  os.path.join(run_dir, "element-compare", "bug-drafts-index.html"),
  os.path.join(run_dir, "element-compare", "bug-drafts-by-css.html"),
  os.path.join(run_dir, "playwright-report", "index.html"),
  os.path.join(run_dir, "issue-3592061-summary.html"),
  os.path.join(run_dir, "issue-3592061-summary.md"),
  os.path.join(run_dir, "issue-3592061-summary.csv"),
  os.path.join(run_dir, "side-by-side-vrt-diffs.html"),
  os.path.join(run_dir, "side-by-side-interactions.html"),
]

existing_mtimes = [os.path.getmtime(path) for path in candidate_files if os.path.exists(path)]

if existing_mtimes:
  latest_timestamp = max(existing_mtimes)
  run_dt = datetime.fromtimestamp(latest_timestamp, tz)
else:
  try:
    run_dt = datetime.strptime(run_id, "%Y%m%d-%H%M%S").replace(tzinfo=tz)
  except ValueError:
    print(run_id)
    raise SystemExit(0)

now = datetime.now(tz)
delta_seconds = int((now - run_dt).total_seconds())

if delta_seconds < 0:
  relative = "in the future"
elif delta_seconds < 60:
  relative = "just now"
elif delta_seconds < 3600:
  minutes = delta_seconds // 60
  unit = "minute" if minutes == 1 else "minutes"
  relative = f"{minutes} {unit} ago"
elif delta_seconds < 86400:
  hours = delta_seconds // 3600
  unit = "hour" if hours == 1 else "hours"
  relative = f"{hours} {unit} ago"
else:
  days = delta_seconds // 86400
  unit = "day" if days == 1 else "days"
  relative = f"{days} {unit} ago"

hour_12 = run_dt.hour % 12 or 12
am_pm = "AM" if run_dt.hour < 12 else "PM"
human = f"{run_dt.strftime('%B')} {run_dt.day}, {run_dt.year} at {hour_12}:{run_dt.minute:02d}:{run_dt.second:02d} {am_pm} ET"

print(f"{human} ({relative})")
PY
}

preferred_run_link() {
  local run_id="$1"
  local run_dir="$REPORT_DIR/$run_id"

  if [[ -f "$run_dir/element-compare/element-compare-dashboard.html" ]]; then
    printf 'report/%s/element-compare/element-compare-dashboard.html' "$run_id"
    return 0
  fi
  if [[ -f "$run_dir/issue-3592061-summary.html" ]]; then
    printf 'report/%s/issue-3592061-summary.html' "$run_id"
    return 0
  fi
  if [[ -f "$run_dir/issue-3592061-summary.md" ]]; then
    printf 'report/%s/issue-3592061-summary.md' "$run_id"
    return 0
  fi
  if [[ -f "$run_dir/playwright-report/index.html" ]]; then
    printf 'report/%s/playwright-report/index.html' "$run_id"
    return 0
  fi

  printf 'report/%s/' "$run_id"
}

latest_run=""
mapfile_runs=()
while IFS= read -r run_id; do
  [[ -n "$run_id" ]] || continue
  run_dir="$REPORT_DIR/$run_id"
  if run_has_valid_data "$run_dir"; then
    mapfile_runs+=("$run_id")
    if [[ -z "$latest_run" ]]; then
      latest_run="$run_id"
    fi
  fi
done < <(find "$REPORT_DIR" -maxdepth 1 -mindepth 1 -type d -name '20*' -exec basename {} \; | sort -r)

if [[ -z "$latest_run" ]]; then
  echo "No valid report runs found under $REPORT_DIR"
  exit 1
fi

latest_run_human="$(format_run_human_eastern "$latest_run" "$REPORT_DIR/$latest_run")"

recent_items=""
count=0
for run_id in "${mapfile_runs[@]}"; do
  run_href="$(preferred_run_link "$run_id")"
  recent_items+="        <li><a href=\"${run_href}\">${run_id}</a></li>"
  recent_items+=$'\n'
  count=$((count + 1))
  [[ $count -ge 8 ]] && break
done

latest_links=""
latest_dir="$REPORT_DIR/$latest_run"
if [[ -f "$latest_dir/element-compare/element-compare-dashboard.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/element-compare/element-compare-dashboard.html\">Element Compare Dashboard</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/element-compare/bug-drafts-index.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/element-compare/bug-drafts-index.html\">Bug Drafts Index (HTML)</a></li>"
  latest_links+=$'\n'
elif [[ -f "$latest_dir/element-compare/bug-drafts-index.md" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/element-compare/bug-drafts-index.md\">Bug Drafts Index</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/element-compare/bug-drafts-by-css.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/element-compare/bug-drafts-by-css.html\">Bug Drafts by CSS (HTML)</a></li>"
  latest_links+=$'\n'
elif [[ -f "$latest_dir/element-compare/bug-drafts-by-css.md" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/element-compare/bug-drafts-by-css.md\">Bug Drafts by CSS</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/side-by-side-vrt-diffs.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/side-by-side-vrt-diffs.html\">Side-by-side VRT Diffs</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/side-by-side-interactions.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/side-by-side-interactions.html\">Side-by-side Interactions</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/playwright-report/index.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/playwright-report/index.html\">Playwright HTML Report</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/issue-3592061-summary.html" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/issue-3592061-summary.html\">Issue Summary (HTML)</a></li>"
  latest_links+=$'\n'
elif [[ -f "$latest_dir/issue-3592061-summary.md" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/issue-3592061-summary.md\">Issue Summary (Markdown)</a></li>"
  latest_links+=$'\n'
fi
if [[ -f "$latest_dir/issue-3592061-summary.csv" ]]; then
  latest_links+="        <li><a href=\"report/${latest_run}/issue-3592061-summary.csv\">Issue Summary (CSV)</a></li>"
  latest_links+=$'\n'
fi

cat > "$OUT_HTML" <<HTML
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Drupal Diff Reports</title>
  <style>
    :root {
      --bg: #f6f7fb;
      --panel: #ffffff;
      --text: #1b1d24;
      --muted: #5a6170;
      --accent: #0b57d0;
      --line: #d7dce7;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", Helvetica, Arial, sans-serif;
      color: var(--text);
      background: linear-gradient(180deg, #eef3ff 0%, var(--bg) 220px);
    }
    main { max-width: 920px; margin: 0 auto; padding: 32px 20px 56px; }
    h1 { margin: 0 0 8px; font-size: 2rem; line-height: 1.2; }
    p { margin: 0 0 16px; color: var(--muted); line-height: 1.5; }
    .card { background: var(--panel); border: 1px solid var(--line); border-radius: 14px; padding: 18px; margin: 14px 0; box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05); }
    .card h2 { margin: 0 0 8px; font-size: 1.1rem; }
    ul { margin: 8px 0 0; padding-left: 18px; }
    li { margin: 8px 0; }
    a { color: var(--accent); text-decoration: none; font-weight: 600; }
    a:hover, a:focus { text-decoration: underline; }
  </style>
</head>
<body>
  <main>
    <h1>Drupal Admin Theme Visual Regression Reports</h1>
    <p>
      GitHub Pages entry point for published visual regression artifacts in this repository.
    </p>

    <section class="card">
      <h2>Latest Run: ${latest_run}</h2>
      <p>${latest_run_human}</p>
      <ul>
${latest_links}      </ul>
    </section>

    <section class="card">
      <h2>Recent Completed Runs</h2>
      <ul>
${recent_items}      </ul>
    </section>

    <section class="card">
      <h2>Browse</h2>
      <ul>
        <li><a href="report/index.html">All HTML report links</a></li>
        <li><a href="https://github.com/mgifford/drupal-diff">GitHub Project</a></li>
        <li><a href="README.md">README</a></li>
      </ul>
    </section>
  </main>
</body>
</html>
HTML

echo "Rebuilt: $OUT_HTML"
