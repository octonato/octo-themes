#!/usr/bin/env bash
#
# Installs the Octo Everest Obsidian theme into a vault.
# Obsidian themes are per-vault, living under:
#   <vault>/.obsidian/themes/Octo Everest/
#
# Usage: ./install.sh /path/to/your/vault

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_NAME="Octo Everest"

VAULT="${1:-}"
if [[ -z "$VAULT" ]]; then
  echo "Usage: $0 /path/to/your/vault" >&2
  exit 1
fi

if [[ ! -d "$VAULT/.obsidian" ]]; then
  echo "Error: '$VAULT' does not look like an Obsidian vault (no .obsidian folder)." >&2
  exit 1
fi

DEST_DIR="$VAULT/.obsidian/themes/$THEME_NAME"
mkdir -p "$DEST_DIR"
cp -v "$SCRIPT_DIR/theme.css" "$DEST_DIR/"
cp -v "$SCRIPT_DIR/manifest.json" "$DEST_DIR/"

echo
echo "Installed '$THEME_NAME' into $VAULT."
echo "In Obsidian: Settings -> Appearance -> Themes -> pick 'Octo Everest'."
echo "Light mode renders Everest; dark mode renders Aurora Borealis."
