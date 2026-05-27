#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
RUNNER="$ROOT_DIR/src/run-admin-vrt-compare.sh"
MODE="${1:-normal}"
LABEL="${2:-patch-rerun}"

if [[ ! -x "$RUNNER" ]]; then
  chmod +x "$RUNNER"
fi

"$RUNNER" "$MODE" "$LABEL" false
