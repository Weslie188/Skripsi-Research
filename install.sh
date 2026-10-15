#!/usr/bin/env bash
# Installs all skills in this repo into ~/.claude/skills (global, all projects)
# Usage: ./install.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DST="$HOME/.claude/skills"
AGENTS_DST="$HOME/.claude/agents"

mkdir -p "$SKILLS_DST" "$AGENTS_DST"

count=0
for skill_dir in "$REPO_DIR"/skills/*/; do
  name="$(basename "$skill_dir")"
  ln -sfn "$skill_dir" "$SKILLS_DST/$name"
  count=$((count + 1))
done

for agent_file in "$REPO_DIR"/agents/*.md; do
  [ -e "$agent_file" ] || continue
  cp "$agent_file" "$AGENTS_DST/"
done

echo "Installed $count skills into $SKILLS_DST"
echo "Copied agent files into $AGENTS_DST"
echo "Restart 'claude' and run /skills to verify."
