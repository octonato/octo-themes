#!/usr/bin/env bash
#
# Installs the Octo Autumn Typora theme into the user's Typora themes folder.
# macOS only — Typora's themes directory on macOS is:
#   ~/Library/Application Support/abnerworks.Typora/themes

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_FILE="octo-autumn.css"
SRC="$SCRIPT_DIR/$THEME_FILE"
DEST_DIR="$HOME/Library/Application Support/abnerworks.Typora/themes"

if [[ ! -f "$SRC" ]]; then
  echo "Error: $THEME_FILE not found next to install.sh ($SRC)" >&2
  exit 1
fi

if [[ ! -d "$DEST_DIR" ]]; then
  echo "Typora themes folder not found, creating: $DEST_DIR"
  mkdir -p "$DEST_DIR"
fi

cp -v "$SRC" "$DEST_DIR/"

echo
echo "Installed Octo Autumn into Typora."
echo "Open Typora and pick 'Octo Autumn' from the Themes menu (restart if it doesn't appear)."
