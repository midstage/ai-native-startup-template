# AI-Native Startup Template

A starter repo for running a startup with agents. It packages how Roland Siebelink runs his own companies in Claude Code: one repo that holds the whole company, organized as a flywheel, with operating rules and skills for the agents that work in it.

> **This repo is updated continuously.** It follows Roland's own setup as it improves. When you come back to your copy, run `update the starter` in Claude Code to pull in the latest rules and skills. It never touches your own files.

## Why a repo

Agents start every session without memory. A well-organized repo is the memory they can rely on: "just as if you were to give a diligent employee access to a well-organized library." If it isn't saved to the repo, it didn't happen.

Building an AI-Native startup is about building a startup first, and agents second. So the spine of this repo is not a list of agents. It is the business flywheel.

## Start here

1. Choose **Use this template** on GitHub to make your own copy. Keep it private.
2. Clone your copy to your computer.
3. Open the folder in Claude Code (`claude`).
4. Type: `run the flywheel interview`

The interview asks about your business one question at a time and writes your answers into the repo. Short on time? Say so, and it asks only about your idea, your first customer and their problem, and your offer, then proposes your first jobs.

You need a GitHub account and Claude Code, signed in with a Claude plan that includes it.

## What each file is for

| File | What it is for |
|---|---|
| `CLAUDE.md` | Standing instructions for every agent, with the reason next to each rule. Holds your startup idea once the interview fills it in. |
| `flywheel.md` | How your business turns strangers into customers and repeat customers, segment by segment, and this week's goals. |
| `canvas.md` | One page: your idea, your customer, their problem and your offer. |
| `strategy.md` | Your plan at a glance: purpose, values, moonshot goal, core customer, where you play, and this year's and this quarter's priorities. Agents check it before they act. |
| `backlog.md` | The jobs your company needs done, written so an agent can pick one up. |
| `work/` | Everything else, filed by flywheel segment (see below). |
| `docs/decisions/` | One file per decision, never edited after the fact. |
| `.claude/skills/` | The skills your agents use (see below). |
| `.claude/hooks/` | Bash scripts Claude Code runs on its own. They enforce what a written rule can't. |

## The flywheel folders

| Folder | Segment | Its output feeds the next |
|---|---|---|
| `work/0_meta` | Cross-cutting | how the company runs |
| `work/1_marketable` | Product and engineering | marketable features |
| `work/2_demand` | Marketing | demand and leads |
| `work/3_sales` | Sales | contracts |
| `work/4_success` | Customer success | onboarded, happy, paying customers |
| `work/5_runway` | Finance | runway, reinvested |
| `work/6_capacity` | Back office, people, agents | capacity, which builds more marketable features |
| `work/7_projects` | Projects | one folder per project, each with its own `CONTEXT.md` |
| `work/8_companies` | Customers and partners | one folder per company |
| `work/9_archive` | Archive | what you no longer use |

Organize by flywheel segment, not by department. Every agent should know which segment it serves and what that segment produces.

## Skills

Say the phrase in Claude Code, or type `/` plus the skill name.

| Skill | Say | What it does |
|---|---|---|
| `flywheel-interview` | "run the flywheel interview", "interview me on strategy" | Interviews you segment by segment and fills in `CLAUDE.md`, `canvas.md`, `strategy.md`, `flywheel.md` and your first jobs. |
| `wrap` | "wrap" | End of session: saves what was decided and what's next into the project's `CONTEXT.md`, then commits and pushes. |
| `sweep` | "sweep the backlog" | Goes through newly captured jobs, links each to a goal, makes the done test checkable, and asks you only what it can't settle. Never does the work itself. |
| `decisions` | "decisions" | Your morning queue: one decision at a time, each with a suggested answer, in a 15-minute box. |
| `traction-update` | "traction update" | Daily: offers, traffic and sales. How many offers are live, the highest traffic and sales numbers you can measure, and the weakest of the three. Schedule it in the desktop app. |
| `checker` | "check the job ..." | A second agent verifies delivered work against its done test. The doer never grades itself. |
| `priorities` | "priorities review" | Weekly: finds the weakest segment of your flywheel and sets this week's goals around it. |
| `update-starter` | "update the starter" | Pulls the latest rules and skills from this public repo into your copy. Never touches your own files. |

## Hooks

Rules written for an agent can be overruled by the agent. Hooks can't. This repo keeps them few and bash-only:

- **Session start:** tells Claude today's date, and shows the handover from the last session when you open a project folder.
- **Outward actions:** asks you before any connected tool sends, posts, publishes or shares something.
- **Destructive git:** blocks `git reset --hard` and force pushes.

## Going further

This repo deliberately leaves out stack-specific rules (testing, UI) and third-party skill packs. Add them when you need them. Roland uses, among others, [gstack](https://github.com/garrytan/gstack) for product and engineering reviews and [superpowers](https://github.com/obra/superpowers) for debugging and test-driven development.

## License

Free to use and change for your own startup, under the [PolyForm Internal Use License 1.0.0](LICENSE.md). You may not share, resell or redistribute this repo or a version of it.

Made for the [AI-Native Startup session](https://skills.midstage.ac/ai-native/build) by [Midstage](https://midstage.ac).
