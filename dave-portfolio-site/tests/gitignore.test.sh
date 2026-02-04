#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GITIGNORE_FILE="$ROOT_DIR/.gitignore"

if [[ ! -f "$GITIGNORE_FILE" ]]; then
  echo "Expected .gitignore to exist at $GITIGNORE_FILE" >&2
  exit 1
fi

required_entries=(
  ".DS_Store"
  "Thumbs.db"
  "node_modules/"
  "dist/"
  ".env"
)

for entry in "${required_entries[@]}"; do
  if ! grep -Fxq "$entry" "$GITIGNORE_FILE"; then
    echo "Missing required entry in .gitignore: $entry" >&2
    exit 1
  fi
done

echo ".gitignore contains required entries."
