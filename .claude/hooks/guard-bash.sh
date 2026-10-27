#!/bin/bash
# PreToolUse on Bash: block git commands that throw work away or rewrite shared
# history. Exit code 2 blocks the command and shows the message to Claude.

input=$(cat)

if echo "$input" | grep -Eq 'git[^"]*reset[^"]*--hard'; then
  echo "Blocked: git reset --hard throws away uncommitted work. Commit or stash first, or ask the founder." >&2
  exit 2
fi

if echo "$input" | grep -Eq 'git[^"]*push[^"]*(--force|[[:space:]]-f([[:space:]]|"|$))'; then
  echo "Blocked: force push rewrites shared history. Ask the founder." >&2
  exit 2
fi

exit 0
