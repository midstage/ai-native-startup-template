---
name: sweep
description: The backlog coordinator. Goes through newly captured jobs, adds context, links each to a goal, makes the done test checkable, and prepares the questions only the founder can answer. Never does the work on the jobs itself. Use when the founder says "sweep", "sweep the backlog", "groom the backlog", "what's in the queue", or after a batch of new jobs was captured.
---

# Sweep the backlog

Jobs are captured fast, in the middle of something else: a title, an idea, where it came from. Defining them is the work nobody likes. You do it.

**You manage the queue. You never do the work on it.** A coordinator that starts solving jobs gets lost and never finishes the queue. If a job is trivial, still don't do it: mark it Ready and say so.

## Where jobs live

`backlog.md` (the Jobs section), or GitHub issues labelled `new` if the founder uses issues. Read whichever holds jobs. Also read `flywheel.md` (Goals this week, The constraint), `strategy.md` (this quarter's and this year's priorities, Where we play) and `canvas.md`.

## For each job with status New

1. **Context:** search the repo for what the agent will need (the right segment folder, company folder, earlier decisions). Put those paths in Inputs.
2. **Stage:** which flywheel segment does it move?
3. **Goal it serves:** link it to a goal in `flywheel.md` or a priority in `strategy.md`, and say how much it matters. If it falls in an out-of-scope market in `strategy.md`, flag it for the founder instead:
   - **essential:** the goal can't be reached without it
   - **important:** the goal is much harder without it
   - **nice to have**
4. **Done test:** make Done means something a person can check quickly and clearly. "Improve the landing page" is not a test. "The landing page states the offer from canvas.md above the fold" is.
5. **Where a human checks:** the exact file, page or message, and the step.
6. **Door:** one-way if it sends, publishes, spends or deletes anything. Two-way otherwise.
7. **Stop and ask when:** the cases where the agent must not guess.

If you can fill in every field from the repo, set the job to **Ready**.

If you can't, don't guess. Set it to **Waiting for human** and write one question for the founder in its Notes, with a suggested answer. Typical questions:

- "I don't know what this is. What did you mean?"
- "Which goal does this serve? Suggested: <goal>, as nice to have."
- "How would we know it's done? Suggested: <test>."
- "Is this a priority at all? Suggested: no, close it."

## Prioritize against each other, never alone

Priority only means something relative to other work. After defining the new jobs, group the Ready jobs by the goal they serve. Within each group, order them by impact on that goal, essential first. Never rank a job in isolation.

## Jobs that serve no goal

List the jobs that serve none of the current goals. Don't close them. Propose the list to the founder as one batch: "These serve none of your current goals. I'd close all of them. Tell me which ones to keep." Close only what the founder confirms.

## Report

In plain English, briefly:

- how many jobs you defined, and how many are now Ready
- the questions waiting for the founder (they also show up in `decisions`)
- the top Ready job per goal

Commit the updated `backlog.md`.
