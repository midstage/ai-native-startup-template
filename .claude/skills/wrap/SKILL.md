---
name: wrap
description: End-of-session wrap-up. Saves what this session decided and what comes next into the project folder's CONTEXT.md, records decisions, updates job statuses, commits and pushes. Use when the founder says "wrap", "wrap up", "let's stop here", "save this", or at the end of any working session.
---

# Wrap this session

Wrap means: save everything that matters from this conversation into the repo, so the next session can carry on without anyone repeating themselves. Do all of it without asking. Stop only if you're truly stuck.

## 1. Find where this session belongs

- If the session ran inside a project folder (`work/7_projects/<project>/`) or a company folder (`work/8_companies/<company>/`), that folder's `CONTEXT.md` gets the handover.
- If the session started at the repo root but the work clearly belongs to one project, use that project's folder. If there is no folder yet, create one from `work/7_projects/_template/`.
- If the work belongs to no project, put the handover in the job it served in `backlog.md` (its Notes line).

## 2. Write the handover

Replace the `## Where we left off` section in that `CONTEXT.md`. Don't append to it: git keeps the history. Keep it at the end of the file, so the summary above it stays untouched.

At most about 15 lines, plain English, written for a teammate who wasn't there:

- today's date, and what this session got done, in one or two lines
- the next concrete step
- open decisions, each with a suggested answer
- the files or links the next session will need

## 3. Record decisions and jobs

- Each real decision made in this session gets its own file in `docs/decisions/` (copy `_template.md`). Include the alternatives that were rejected.
- Update the status of every job this session touched in `backlog.md`. A job goes to Done only after its done test was checked by someone other than the doer.
- Anything new that came up but wasn't done: capture it as a New job in `backlog.md` (title, idea, source). Don't define it now. The `sweep` will.

## 4. Commit and push

- Look at `git status`. Commit the files this session created or changed, with a clear message. Don't leave anything important uncommitted.
- Before committing, scan the diff: no passwords, tokens or keys, and no large downloaded files unless they were meant to be saved.
- Push to the remote if one is set up. If the push fails, say so plainly and show the error.

## 5. Report

In three lines or fewer: what was saved where, and whether the push worked.

End with an explicit answer to: **"Can you close this session now without losing anything?"**

- **"Yes, safe to close."** when everything is committed and pushed and no decision is waiting.
- **"Not yet:"** followed by exactly what's left: each open decision with a suggested answer, or what couldn't be saved or pushed.
