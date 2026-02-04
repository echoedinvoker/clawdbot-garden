#!/bin/bash
set -e

ZETTEL="$HOME/zettelkasten"
GARDEN="$HOME/Documents/clawdbot-garden"
CONTENT="$GARDEN/content"

rm -rf "$CONTENT"/*

# MOC as index page
cp "$ZETTEL/3-permanent/Clawdbot MOC.md" "$CONTENT/index.md"

# Permanent notes (3 selected)
PERMANENT_NOTES=(
  "Clawdbot"
  "AI Agent 的安全風險"
  "AI Agent 的記憶系統設計"
)
for note in "${PERMANENT_NOTES[@]}"; do
  src="$ZETTEL/3-permanent/$note.md"
  [ -f "$src" ] && cp "$src" "$CONTENT/$note.md"
done

echo "Synced: index + ${#PERMANENT_NOTES[@]} permanent notes"
ls -la "$CONTENT/"
