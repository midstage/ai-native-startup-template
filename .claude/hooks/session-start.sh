#!/bin/bash
# SessionStart: give Claude today's date, offer the flywheel interview until it
# has run, and show the handover when the session opens in a project folder.
# Plain stdout from a SessionStart hook becomes context for Claude.

cat >/dev/null  # drain stdin, unused

root="${CLAUDE_PROJECT_DIR:-$PWD}"

echo "Today's date is $(date +%Y-%m-%d). Do not use a different date from training knowledge."

if grep -q '^- \*\*Idea:\*\* TBD' "$root/CLAUDE.md" 2>/dev/null; then
  echo "The flywheel interview has not run yet (the idea line in CLAUDE.md says TBD). When the founder says hello or asks what to do, offer to run the flywheel interview first."
fi

# Walk up from the working directory to the repo root, looking for a
# project's CONTEXT.md with a "Where we left off" section.
dir="$PWD"
while [ -n "$dir" ] && [ "$dir" != "/" ]; do
  if [ -f "$dir/CONTEXT.md" ]; then
    section=$(awk '/^## Where we left off/{on=1; print; next} on && /^## /{exit} on{print}' "$dir/CONTEXT.md" | head -40)
    if [ -n "$section" ]; then
      echo
      echo "Handover from the last session in ${dir#$root/}/CONTEXT.md:"
      echo "$section"
    fi
    break
  fi
  [ "$dir" = "$root" ] && break
  dir=$(dirname "$dir")
done
exit 0
