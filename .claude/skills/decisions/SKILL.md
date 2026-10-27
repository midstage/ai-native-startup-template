---
name: decisions
description: The founder's morning decision queue. Collects everything waiting for the founder, then walks through it one item at a time, each with a question and a suggested answer, in a 15-minute box. Use when the founder says "decisions", "what needs me", "morning briefing", "decision queue", or starts the day.
---

# Decisions

The founder's job shifts from doing work to deciding and briefing. This skill brings every decision to one place, prepared so that most can be answered with yes or no.

## Collect

1. Every job in `backlog.md` with status **Waiting for human**, plus GitHub issues labelled `needs-founder` if the founder uses issues.
2. Every **Open for the founder** item in `work/7_projects/*/CONTEXT.md`.
3. Delivered work that passed the `checker` and needs the founder's final look (status **Check** with a checker pass in Notes).

For each item, check its history first. If the founder already answered the same question anywhere in the repo, apply that answer and don't ask again.

Every item needs a question and a suggested answer. If one is missing, write it now: read the job, its inputs and its notes, then phrase one question with a suggested answer and one line of why.

## Order

1. Items that unblock other work.
2. Items that serve an essential job for this week's goals.
3. The rest.

Say the count first: "N decisions waiting. Starting the 15-minute clock."

## Ask

One item at a time. Show:

- the title, and where it lives (file and job)
- the question
- the suggested answer
- one line of why

Then ask: **"yes, no, your own answer, skip, or stop?"**

## Act on the answer

- Write the answer into the item, with the date: `Answer from founder (YYYY-MM-DD): yes`.
- Move the job on: back to **Ready** when the agent can continue, to **Done** when the founder approved delivered work, or closed when the founder said drop it.
- If the answer is a real decision for the company, record it in `docs/decisions/`.
- **Never send, publish, pay, merge or delete on a suggested answer alone.** For a one-way door, confirm the exact action in one line ("Send this reply to <name> now?") and wait for an explicit yes for that item.
- A skip stays in the queue for tomorrow. Stop ends the session.

## Time box

Stop offering items after 15 minutes. Say how many are left: they carry over to the next round. After the first five, ask once: "N more, keep going?"

## Close

Say how many were answered, skipped and left. Commit the changed files.

## Style

Talk to a busy founder: the question, the suggested answer, one line of why. No process detail. If an answer is unclear, ask once. Never guess.
