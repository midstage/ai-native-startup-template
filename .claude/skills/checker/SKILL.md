---
name: checker
description: Verifies delivered work against its done test, as a second agent that didn't do the work. Use when a job reaches status Check, when the founder says "check the job <title>", "check this", "is this really done", or before any job is marked Done.
---

# Checker

The agent that did the work is not allowed to judge whether it's done. Agents mark work done when it isn't, and the doer misses what the doer missed. You are the second pair of eyes.

## Who checks

Best: **a different model.** If the founder has a second model's command-line tool installed (for example OpenAI's Codex CLI), give it the job and the delivered files, and ask it to run the steps below. A different model doesn't share the doer's blind spots.

Otherwise: **a fresh subagent** with none of the doer's conversation. Give it only:

- the job from `backlog.md` (Goal, Done means, Where a human checks, Inputs)
- the delivered files or output

Never let the agent that did the work run the check on itself in the same conversation.

## The check

1. Split **Done means** into separate criteria. Check each one against the delivered work: pass or fail, with the evidence (file, line, quote).
2. Check the delivered work against the repo's rules: nothing invented (numbers, quotes, customers, testimonials must come from a file in the repo), nothing sent or published without the founder, no secrets in files.
3. If the job is one-way, confirm the work stopped before the one-way step.
4. Look at **Where a human checks** and confirm the founder will find the work exactly there.

## Verdict

- **All pass:** write `Checker (YYYY-MM-DD): pass` and the evidence into the job's Notes. If the job is one-way or needs the founder's final look, set it to **Waiting for human**, so it shows up in `decisions`. Otherwise set it to **Done**.
- **Any fail:** write `Checker (YYYY-MM-DD): fail` and list each failed criterion with what's missing. Set the job back to **Ready**, so an agent picks it up again. After the second fail on the same job, set it to **Waiting for human** instead: the done test or the job itself may need the founder.

Be strict. A partial pass is a fail. Say plainly when you're unsure about a criterion and why.
