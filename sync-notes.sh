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

# --- Strip broken wikilinks ---
VALID_TARGETS=()
for f in "$CONTENT"/*.md; do
  name="$(basename "$f" .md)"
  VALID_TARGETS+=("$name")
done

for f in "$CONTENT"/*.md; do
  perl -pi -e '
    my @valid = split /\n/, q{'"$(printf '%s\n' "${VALID_TARGETS[@]}")"'};
    my %ok = map { $_ => 1 } @valid;
    # [[target|alias]] form
    s/\[\[([^\]|]+)\|([^\]]+)\]\]/exists $ok{$1} ? "[[$1|$2]]" : "$2"/ge;
    # [[target]] form (no alias)
    s/\[\[([^\]|]+)\]\]/exists $ok{$1} ? "[[$1]]" : "$1"/ge;
  ' "$f"
done

echo "Synced and cleaned: $(ls "$CONTENT"/*.md | wc -l) files"
