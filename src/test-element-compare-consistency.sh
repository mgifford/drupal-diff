#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
REPORT_ROOT="$REPO_ROOT/report"

find_latest_element_compare_dir() {
  local latest_dir=""
  local latest_mtime=0
  local dir=""
  local mtime=0

  while IFS= read -r -d '' dir; do
    mtime="$(stat -f %m "$dir")"
    if (( mtime > latest_mtime )); then
      latest_mtime="$mtime"
      latest_dir="$dir"
    fi
  done < <(find "$REPORT_ROOT" -mindepth 2 -maxdepth 2 -type d -name "element-compare" -print0)

  printf '%s\n' "$latest_dir"
}

TARGET_DIR="${1:-}"
if [[ -z "$TARGET_DIR" ]]; then
  TARGET_DIR="$(find_latest_element_compare_dir)"
fi

if [[ -z "$TARGET_DIR" ]]; then
  echo "No element-compare directory found under $REPORT_ROOT" >&2
  exit 1
fi

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi

node - "$TARGET_DIR" <<'NODE'
const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(process.argv[2]);

const requiredFiles = [
  'element-compare-dashboard.html',
  'bug-drafts-index.md',
  'bug-drafts-by-css.md',
  'suggested-css-patches.md',
  'link-check-report.json',
];

function listFilesRecursive(dir, out = []) {
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  for (const entry of entries) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      listFilesRecursive(full, out);
    } else if (entry.isFile()) {
      out.push(full);
    }
  }
  return out;
}

function normalizeTarget(rawTarget) {
  if (!rawTarget) {
    return null;
  }

  const trimmed = rawTarget.trim();
  if (!trimmed || trimmed.startsWith('#')) {
    return null;
  }

  const lower = trimmed.toLowerCase();
  const skipPrefixes = [
    'http://',
    'https://',
    'mailto:',
    'tel:',
    'javascript:',
    'data:',
    'about:',
  ];

  if (skipPrefixes.some((prefix) => lower.startsWith(prefix))) {
    return null;
  }

  const noHash = trimmed.split('#')[0];
  const noQuery = noHash.split('?')[0];
  if (!noQuery) {
    return null;
  }

  try {
    return decodeURIComponent(noQuery);
  } catch {
    return noQuery;
  }
}

function fileExists(filePath) {
  try {
    return fs.statSync(filePath).isFile();
  } catch {
    return false;
  }
}

function targetExists(baseDir, normalizedTarget) {
  const resolved = path.resolve(baseDir, normalizedTarget);
  if (!resolved.startsWith(rootDir + path.sep) && resolved !== rootDir) {
    return true;
  }

  if (fileExists(resolved)) {
    return true;
  }

  try {
    if (fs.statSync(resolved).isDirectory() && fileExists(path.join(resolved, 'index.html'))) {
      return true;
    }
  } catch {
  }

  return false;
}

function collectTargets(filePath, content) {
  const ext = path.extname(filePath).toLowerCase();
  if (ext === '.html') {
    const matches = [];
    const hrefRegex = /\bhref\s*=\s*"([^"]+)"/gi;
    const srcRegex = /\bsrc\s*=\s*"([^"]+)"/gi;
    let match;
    while ((match = hrefRegex.exec(content)) !== null) {
      matches.push(match[1]);
    }
    while ((match = srcRegex.exec(content)) !== null) {
      matches.push(match[1]);
    }
    return matches;
  }

  if (ext === '.md') {
    const matches = [];
    const mdLinkRegex = /\[[^\]]*\]\(([^)]+)\)/g;
    let match;
    while ((match = mdLinkRegex.exec(content)) !== null) {
      matches.push(match[1]);
    }
    return matches;
  }

  return [];
}

const missingRequired = requiredFiles.filter((relPath) => !fileExists(path.join(rootDir, relPath)));

let reportBrokenLinks = null;
const reportPath = path.join(rootDir, 'link-check-report.json');
if (fileExists(reportPath)) {
  try {
    const parsed = JSON.parse(fs.readFileSync(reportPath, 'utf8'));
    reportBrokenLinks = Number(parsed.brokenLinks);
  } catch {
    reportBrokenLinks = null;
  }
}

const files = listFilesRecursive(rootDir).filter((fullPath) => {
  const ext = path.extname(fullPath).toLowerCase();
  return ext === '.html' || ext === '.md';
});

const missing = [];
let checkedTargets = 0;

for (const filePath of files) {
  const content = fs.readFileSync(filePath, 'utf8');
  const rawTargets = collectTargets(filePath, content);
  const baseDir = path.dirname(filePath);

  for (const rawTarget of rawTargets) {
    const normalized = normalizeTarget(rawTarget);
    if (!normalized) {
      continue;
    }
    checkedTargets += 1;
    if (!targetExists(baseDir, normalized)) {
      missing.push({
        source: path.relative(rootDir, filePath),
        target: normalized,
      });
    }
  }
}

const summary = {
  rootDir,
  scannedFiles: files.length,
  checkedTargets,
  missingRequiredCount: missingRequired.length,
  brokenLocalLinks: missing.length,
  reportBrokenLinks,
};

console.log(JSON.stringify(summary, null, 2));

if (missingRequired.length) {
  console.error('\nMissing required files:');
  for (const relPath of missingRequired) {
    console.error(` - ${relPath}`);
  }
}

if (missing.length) {
  const preview = missing.slice(0, 20);
  console.error('\nBroken local links (first 20):');
  for (const item of preview) {
    console.error(` - ${item.source} -> ${item.target}`);
  }
}

if (missingRequired.length || missing.length || reportBrokenLinks === null || reportBrokenLinks !== 0) {
  process.exit(1);
}
NODE

echo "Element compare consistency check passed for: $TARGET_DIR"