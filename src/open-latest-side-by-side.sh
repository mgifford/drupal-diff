#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REPORT_DIR="$ROOT_DIR/report"
SCREENSHOT_DIR="$ROOT_DIR/screenshots"

LATEST_RUN="$(find "$REPORT_DIR" -maxdepth 1 -mindepth 1 -type d -name '20*' | sort | tail -n 1)"
if [[ -z "$LATEST_RUN" ]]; then
  echo "No run directories found in $REPORT_DIR"
  exit 1
fi

RUN_ID="$(basename "$LATEST_RUN")"
BASELINE_INT="$SCREENSHOT_DIR/$RUN_ID/interactions/baseline"
CANDIDATE_INT="$SCREENSHOT_DIR/$RUN_ID/interactions/candidate"
HTML_OUT="$LATEST_RUN/side-by-side-interactions.html"
HTML_SUMMARY="$LATEST_RUN/issue-3592061-summary.html"
MD_SUMMARY="$LATEST_RUN/issue-3592061-summary.md"

if [[ ! -d "$BASELINE_INT" || ! -d "$CANDIDATE_INT" ]]; then
  echo "Interaction folders missing for run $RUN_ID"
  echo "Expected: $BASELINE_INT and $CANDIDATE_INT"
  exit 1
fi

cat > "$HTML_OUT" <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Drupal Admin Side-by-Side - $RUN_ID</title>
  <style>
    body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; margin: 0; background: #f4f6f8; color: #222; }
    header { position: sticky; top: 0; background: #0b1f3a; color: #fff; padding: 12px 16px; z-index: 2; }
    .meta { font-size: 14px; opacity: 0.95; }
    main { padding: 16px; }
    table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 1px 4px rgba(0,0,0,0.08); }
    th, td { border: 1px solid #d9e0e7; vertical-align: top; padding: 8px; }
    th { background: #e9eef4; text-align: left; }
    .name { font-weight: 700; white-space: nowrap; }
    img { width: 100%; height: auto; border: 1px solid #ccd6e0; background: #fff; }
  </style>
</head>
<body>
  <header>
    <div><strong>Drupal 11 (Gin) vs Drupal 12 (Core Admin)</strong></div>
    <div class="meta">Run: $RUN_ID | Viewer: interactions (default + archetype-based states)</div>
  </header>
  <main>
    <table>
      <thead>
        <tr>
          <th>Capture</th>
          <th>Baseline (Drupal 11 + Gin)</th>
          <th>Candidate (Drupal 12)</th>
        </tr>
      </thead>
      <tbody>
EOF

while IFS= read -r -d '' base_file; do
  fname="$(basename "$base_file")"
  [[ "$fname" == "capture-status.txt" || "$fname" == "interaction-summary.json" ]] && continue
  cand_file="$CANDIDATE_INT/$fname"

  base_rel="../../screenshots/$RUN_ID/interactions/baseline/$fname"
  cand_rel="../../screenshots/$RUN_ID/interactions/candidate/$fname"

  if [[ -f "$cand_file" ]]; then
    cat >> "$HTML_OUT" <<EOF
        <tr>
          <td class="name">$fname</td>
          <td><img src="$base_rel" alt="Baseline $fname" /></td>
          <td><img src="$cand_rel" alt="Candidate $fname" /></td>
        </tr>
EOF
  else
    cat >> "$HTML_OUT" <<EOF
        <tr>
          <td class="name">$fname</td>
          <td><img src="$base_rel" alt="Baseline $fname" /></td>
          <td><em>Missing candidate capture</em></td>
        </tr>
EOF
  fi
done < <(find "$BASELINE_INT" -maxdepth 1 -type f -print0 | sort -z)

cat >> "$HTML_OUT" <<EOF
      </tbody>
    </table>
  </main>
</body>
</html>
EOF

open "$HTML_OUT"
if [[ -f "$HTML_SUMMARY" ]]; then
  open "$HTML_SUMMARY"
elif [[ -f "$MD_SUMMARY" ]]; then
  open "$MD_SUMMARY"
fi

echo "Opened side-by-side viewer: $HTML_OUT"
if [[ -f "$HTML_SUMMARY" ]]; then
  echo "Opened issue summary: $HTML_SUMMARY"
else
  echo "Opened issue summary: $MD_SUMMARY"
fi
