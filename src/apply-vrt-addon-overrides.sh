#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OVERRIDE_DIR="$ROOT_DIR/src/vrt-addon-overrides"

if [[ ! -d "$OVERRIDE_DIR" ]]; then
  echo "Override directory not found: $OVERRIDE_DIR"
  exit 1
fi

PROJECTS=("$ROOT_DIR/drupal-11.3.10" "$ROOT_DIR/drupal-git")
FILES=(
  ".ddev/commands/web/vrt"
  ".ddev/commands/web/vrt-update"
  ".ddev/drupal-admin-vrt/playwright.config.ts"
  ".ddev/drupal-admin-vrt/tests/vrt/generate-vrt-tests.ts"
  ".ddev/drupal-admin-vrt/tests/vrt/theming-tools.spec.ts"
)

for project in "${PROJECTS[@]}"; do
  if [[ ! -d "$project" ]]; then
    continue
  fi

  for rel in "${FILES[@]}"; do
    src="$OVERRIDE_DIR/${rel#.ddev/}"
    dest="$project/$rel"

    if [[ -f "$src" && -f "$dest" ]]; then
      cp "$src" "$dest"
    fi
  done

done

echo "Applied VRT addon overrides to available projects."
