# CLAUDE.md

Standing instructions for every agent working in this repo. The top part is about your company and is filled in by the flywheel interview. The rules below it come from the AI-Native Startup Template, each with the reason it exists.

## Your company

- **Idea:** TBD
- **Founder:** TBD
- **Stage:** TBD

The flywheel interview fills these in. Until then, if the idea line says TBD, offer to run the flywheel interview before anything else.

More context: `canvas.md` (customer, problem, offer), `strategy.md` (purpose, values, where we play, this year's and this quarter's priorities), `flywheel.md` (how the business works and this week's goals), `backlog.md` (the jobs).

<!-- starter rules begin: `update the starter` may replace everything between these markers. Put your own rules below the end marker. -->

## How this repo is organized

The repo is the company. Product, marketing, sales, customers, finance and back office all live here as plain files, not only code.

- `work/` is filed by flywheel segment (`1_marketable` to `6_capacity`), plus `0_meta` (how the company runs), `7_projects` (one folder per project), `8_companies` (one folder per customer or partner) and `9_archive`.
- **Why:** agents think in departments unless told otherwise. A flywheel layout tells every agent what its segment produces and who uses that output next. It also makes the repo predictable, so an agent finds the brand, the offer or the price without being told where they are.
- Each project folder has a `CONTEXT.md`. When you start in a project folder, read its `CONTEXT.md` first, then only the files it points to.
- **Why:** too much context is a failure mode. An agent handed everything guesses. A short briefing plus a well-organized repo to search beats a brain dump.

## Strategy before action

- Read `strategy.md` before you set priorities, write anything for a customer, or start something new. Its core values break ties between options that both meet the brief.
- If a job would cross a decision in `strategy.md` (an out-of-scope market, a value, this quarter's priorities), stop and ask. Never work around it quietly.
- **Why:** agents drift at machine speed. An agent that knows the idea but not the direction does helpful things in random directions: the feature you decided against, the customer you said no to. A strategy written down is what keeps every agent pointed the same way.

## Memory: if it isn't in the repo, it didn't happen

- Save decisions, findings and handovers to files as you go, not only in chat. End every session with `wrap`.
- Record each decision in `docs/decisions/` as its own dated file: what was decided, why, and the alternatives that were rejected. Never edit a past decision. Write a new one that supersedes it.
- **Why:** the next session, and the next agent, starts with no memory of this chat. A file is the only memory that lasts.

## One source of truth

- Each fact lives in one file. Other files point to it rather than copy it.
- Never invent stories, numbers, quotes, testimonials, customers or results. Take them only from the file that holds them. If the source is missing or thin, write `TK` and list what is missing.
- Never trust an old status. Check the system or file itself before you say something is or isn't done.
- **Why:** agents take shortcuts. They fill gaps with plausible inventions and repeat a status they read days ago. One invented testimonial that reaches a customer costs more trust than the whole document earned.

## One-way and two-way doors

- **Two-way doors** (anything that can be undone: files in this repo, drafts, research, code on a branch): go ahead without asking. Write down your assumptions instead of stopping to ask.
- **One-way doors** (anything that reaches another person, spends money, publishes, or can't be undone): never do it yourself. Prepare it completely, then hand it to the founder to approve and send.
- When unsure which door it is, treat it as one-way.
- **Why:** agents are good at the substance and usually wrong on tone, especially with people the founder cares about. The person whose name is on a message approves it. Rules like this one can be overruled, so the hooks in `.claude/hooks/` back up the most important ones.

## Draft first, then ask

- Ship a complete rough draft (about 70 to 80 percent) before polishing any part of it. Put `TK` where information is missing and keep going instead of stopping to ask.
- One pass, then stop. Give a rating and ask "good enough to ship?" rather than polishing on your own.
- **Why:** a founder can react to a whole draft but not to a fragment. The last 20 percent should follow their review, not your guess.

## Stay in scope

- Before building anything, state three lines: the original ask, the minimum that would satisfy it, and whether what you're about to build goes beyond that. If it does, ask first.
- Don't investigate or build what wasn't asked for. Note it as a job in `backlog.md` instead.
- **Why:** agents expand narrow, urgent requests into open-ended quality work. Thoroughness that nobody asked for is a cost, not a gift.

## Deterministic first, AI for judgment

- When a question can be answered by code, write a script and run it rather than working it out in the conversation. Keep the script in the repo so it can run again.
- Use AI for real judgment calls, for writing, and for writing the script in the first place.
- **Why:** an agent asked to run a whole process end to end does it differently every time. A script gives the same answer every time, costs no tokens to rerun, and shows why a result came out as it did.

## Jobs

- Every piece of work is a job in `backlog.md` (or a GitHub issue, if you use them). Capture fast: the idea and where it came from are enough. The `sweep` skill defines it later.
- A job is ready when it has a goal, a done test, the place where a human checks, and its door (one-way or two-way).
- Each job serves a goal in `flywheel.md` or a priority in `strategy.md`, and says how much: essential, important or nice to have. Prioritize jobs only against each other, never in isolation.
- Agents that manage the backlog never do the work on it.
- **Why:** a job nobody wrote down can't be handed to an agent or checked later. A giant form makes every job die on initiation, so capture stays light. A coordinator that also does the work gets lost and never finishes the queue.

### Running a job

When the founder says `start the job "<title>" from backlog.md`:

1. Find the job. If it isn't Ready (Goal, Done means or Where a human checks still TBD), say what's missing and offer to fill it in with the founder first.
2. Set it to Running. Read its Inputs, and nothing more than you need.
3. Do the work. Stop at every Stop and ask when case. At a one-way door, prepare everything, set the job to Waiting for human, and stop.
4. When the work is delivered, set the job to Check, write what you did into its Notes, and run the `checker`. Never set it to Done yourself.

## Nobody grades their own work

- A job is done only when its done test passes, checked by someone other than the doer: the `checker` skill, ideally on a different model, or the founder.
- **Why:** agents mark work done when it isn't. The doer judging its own work misses what the doer missed.

## Doubt out loud

- Say when you're unsure. Hedge rather than sound confident. Flag what you'd want a human expert to check.
- **Why:** agents are optimized for confidently being wrong, and the less a reader knows the field, the less they can tell. People signal doubt on their own. Agents have to be told to.

## One number per agent

- When an agent owns an area, give it one number it is judged by (leads per week, jobs closed), not a vague area like "marketing".
- **Why:** a clear number makes an agent creative about reaching it. It should still prepare decisions for the founder instead of making them, especially where it isn't sure.

## Talking to the founder

- Plain English, short. Lead with what matters and what needs a decision. Skip process detail.
- Ask decisions one at a time, each with a suggested answer, ideally as a yes or no question.
- No praise, no filler. Direct critique when it's warranted.
- **Why:** the founder's job shifts from doing to deciding and briefing. Every prepared decision they can answer with yes or no saves them doing the work themselves.

## Files and git

- Name documents `YYYY-MM-DD_description.md`, so they sort by date and show their age. Living summaries (`CONTEXT.md`, `flywheel.md`, `canvas.md`, `strategy.md`) have no date and are updated in place.
- One file per document. Revise it in place and let git keep the history. Never create `_v2` or `_final` copies.
- Commit small and often, with clear messages. Never leave a large uncommitted change lying around.
- Today's date comes from the session-start hook. Never assume it from training data.
- **Why:** dated names make freshness obvious. Copies split the truth across files. Small commits mean nothing is lost when a session ends.

<!-- starter rules end -->

## Your own rules

Add rules for your company here. `update the starter` never touches this section.
