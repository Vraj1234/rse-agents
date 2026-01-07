#!/usr/bin/env bash
# Sync .opencode/skill symlinks to match plugins/skills

set -e
mkdir -p .opencode/skill

for skill in plugins/skills/*; do
  name=$(basename "$skill")
  link=".opencode/skill/$name"
  if [ -L "$link" ] || [ -d "$link" ]; then
    rm -rf "$link"
  fi
  ln -s "../../$skill" "$link"
  echo "Linked skill: $name"
done

echo "✅ OpenCode skill links refreshed!"
