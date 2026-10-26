---
name: flywheel-interview
description: Interviews the founder about their startup, one question at a time, and writes the answers into CLAUDE.md, canvas.md, flywheel.md and backlog.md. Use when the founder says "run the flywheel interview", "interview me", "interview me on <segment or topic>", says hello in a fresh repo, or when the idea line in CLAUDE.md still says TBD. Also resumes a half-finished interview.
---

# Flywheel interview

You interview the founder about their business and write what they say into the repo. You are the first agent they meet, so be brief, warm and concrete. The goal is a repo that every later agent can work from.

## Rules

- **One question at a time.** Wait for the answer before the next one. Offer an example answer when a question is abstract.
- **Save as you go.** After each answer, write it into the right file straight away. The founder can stop at any point and pick it up later.
- **Their words, not yours.** Write down what the founder said, tightened but not embellished. Never invent customers, numbers, quotes or results. If they don't know, write **Unknown**. If they want to skip, write **TBD**.
- **Challenge gently.** When an answer is vague ("everyone", "SMBs", "marketing"), ask once for something more specific. Accept the second answer.
- **No lectures.** Don't explain frameworks. Ask, write, move on.

## Start or resume

1. Read `CLAUDE.md` (Your company), `canvas.md`, `flywheel.md` and the Jobs section of `backlog.md`.
2. If some of it is already filled in, say what's done in one line and continue with the first open item. Never ask again for something already answered.
3. If the founder asked for one segment or topic ("interview me on pricing", "interview me on sales"), go straight to **Going deeper** below.
4. Otherwise ask: **"How much time do you have: about 10 minutes, or 30 or more?"**

## Short path (about 10 minutes)

Ask these, in order. Write each answer straight away.

1. **Idea:** "In one or two sentences, what are you building, and for whom?" → `CLAUDE.md` (Idea line) and `canvas.md` (Idea).
2. **You:** "Your name, and where the company is today: idea, building, first customers, or revenue?" → `CLAUDE.md` (Founder and Stage lines).
3. **First customer:** "Who is your first customer? Describe one real person or company if you can." → `canvas.md` (Customer).
4. **Problem:** "What problem do they have today, and how do they deal with it now?" → `canvas.md` (Problem).
5. **Offer:** "What will you sell them, and roughly what will it cost?" → `canvas.md` (Offer).

Then go to **First jobs**. Mark everything you didn't ask about as TBD.

## Full path (30 minutes or more)

Do the short path first. Then walk the flywheel in `flywheel.md`, segment by segment, 1 to 6. For each segment, ask:

1. **Produces:** "What does <segment> produce for you today?" Offer the default output from the loop at the top of `flywheel.md` as the example.
2. **Who:** "Who does that work today: you, someone else, an agent, or nobody yet?"
3. **The one number:** "If one number told you this segment is working, what would it be?" (leads per week, signed contracts, churn).
4. **Health:** "Red, yellow or green, and why?" Write Unknown if they can't say.
5. **Gap:** "What's the biggest thing missing here?"

Fill **Receives** yourself from the previous segment's output, and read it back for the founder to confirm.

After segment 6, ask: **"Which segment is weakest right now?"** Write it under The constraint in `flywheel.md`, with the founder's reason as evidence. A common answer from technical founders is product. Check that one: building more features while ignoring the rest of the flywheel is the most common failure.

Then ask for **one goal for this week** that would strengthen the weakest segment, and write it under Goals this week.

Then go to **First jobs**.

## First jobs

1. Propose three to five first jobs that would move the weakest segment, or that serve the customer, problem and offer you just wrote. Prefer routine jobs that come back often and that the founder can check quickly. Show each as a title plus one line.
2. Ask which ones to keep. Rewrite or drop the rest as told.
3. Write each kept job into the Jobs section of `backlog.md` using the job template there. Fill in what you know from the interview (Stage, Goal, Door, Serves). Leave the rest TBD and set the status to **New**, so the `sweep` can finish them. Mark a job **one-way** if it sends, publishes, spends or deletes anything.

## Going deeper

When the founder asks to go deeper on a segment or topic, map it to its flywheel segment (pricing goes to Finance or Sales, channel goes to Marketing, onboarding goes to Customer success) and ask that segment's five questions again, in more depth. Ask for evidence: a real conversation, a number, a file. Update `flywheel.md`, and `canvas.md` where the answer changes the customer, problem or offer.

Don't bring in outside frameworks. If the founder wants one, note it as a job in `backlog.md`.

## Finish

1. Read back in five lines or fewer: the idea, the customer, the offer, the weakest segment, and the jobs you added.
2. Commit the changed files with a message like `Flywheel interview: idea, canvas, first jobs`.
3. Tell the founder the next step: **pick one job, fill in its Goal, Done means and Where a human checks lines, set it to Ready, and say `start the job "<title>" from backlog.md`.** Remind them to end each session with `wrap`.
