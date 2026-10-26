---
name: update-starter
description: Pulls the latest rules, skills and hooks from the public AI-Native Startup Template into this repo, without touching the founder's own files. Use when the founder says "update the starter", "update the template", "get the latest skills", or comes back to the repo after a while.
---

# Update the starter

This repo was made from `midstage/ai-native-startup-template`, which keeps improving. This skill brings those improvements in. It never touches the founder's own content.

## What the starter owns

Only these may be updated:

- the skills in `.claude/skills/` whose folder name is listed in the starter's `.starter-files`
- the hooks in `.claude/hooks/` listed in `.starter-files`
- `.claude/settings.json`, merged (see below)
- in `CLAUDE.md`, only the text between `<!-- starter rules begin` and `<!-- starter rules end -->`
- the `README.md` files inside `work/` folders, and the templates (`work/7_projects/_template/`, `docs/decisions/_template.md`, `.github/ISSUE_TEMPLATE/job.md`)

Everything else belongs to the founder and is never changed: `flywheel.md`, `canvas.md`, `strategy.md`, `backlog.md`, the rest of `CLAUDE.md`, everything else under `work/` and `docs/decisions/`, and any skill or hook the founder added.

## Steps

1. Make sure the working tree is clean (`git status`). If not, ask the founder to `wrap` first.
2. Fetch the latest starter into a temporary folder:
   `git clone --depth 1 https://github.com/midstage/ai-native-startup-template.git /tmp/ai-native-starter`
3. Read `/tmp/ai-native-starter/.starter-files` to get the list of starter-owned paths.
4. For each starter-owned path, compare the starter's version with this repo's (`diff -ru`). Collect what's new, changed or removed.
5. If the founder changed a starter-owned file themselves, don't overwrite it. Show both versions and ask which to keep.
6. Show the founder a short summary: which skills, hooks and rules changed, in one line each. Ask: **"Apply these updates?"**
7. On yes:
   - copy the changed starter files over
   - replace the starter rules block in `CLAUDE.md` with the starter's block, leaving everything outside the markers as it is
   - for `.claude/settings.json`, add the starter's hook entries that are missing and keep every entry the founder added
8. Commit with the message `Update from the AI-Native Startup Template (YYYY-MM-DD)`, then delete `/tmp/ai-native-starter`.
9. Report in one line per change what is new.

If the clone fails (no network, or the repo moved), say so and stop. Never guess at updates.
