# Backlog

The jobs your company needs done, written so an agent can pick one up without guessing. Agents start only jobs marked Ready.

If you prefer GitHub issues, use the Job issue template instead: it has the same fields. Pick one place and keep every job there.

## How it works

- **Capture fast.** A new job needs only a title, the idea and where it came from. Set it to New. The `sweep` skill fills in the rest later, and asks you only what it can't settle.
- **Statuses:**
  - **New:** captured, not yet defined.
  - **Ready:** defined, and an agent may start it.
  - **Running:** an agent is working on it.
  - **Waiting for human:** the agent reached a one-way door or a stop condition. It shows up in your `decisions` queue.
  - **Check:** the work is delivered and the `checker` verifies it against the done test.
  - **Done:** the done test passed and the human check is complete.
- **Doors:** a **one-way** job sends, publishes, spends or deletes something. The agent prepares it, sets the job to Waiting for human and stops. A **two-way** job can be undone. The agent may run it and writes down what it did.
- **Priority** is never set on one job alone. Jobs that serve the same goal are ranked against each other.

## Job template

Copy this block for each job. Leave a line as TBD if you don't know it yet.

```
### <short title>

Status: New
Stage: Product | Marketing | Sales | Success | Finance | Capacity
Door: two-way | one-way
Serves: <a goal in flywheel.md or a priority in strategy.md> (essential | important | nice to have)

Idea: What came up, in a sentence or two.
Source: Where it came from (a call, a file, a session).

Goal: One sentence. What should be true when the job is done.
Done means: The test. A check a person can do quickly and clearly.
Where a human checks: The exact file, page or message, and the exact step.
Inputs: Files or links the agent reads first.
Stop and ask when: The cases where the agent must not guess.
Notes: Optional. Context, limits, links, and what the agent did.
```

## Example

```
### Draft a reply to each new inquiry

Status: Ready
Stage: Sales
Door: one-way
Serves: Close the first three customers (essential)

Idea: Inquiries wait days for an answer.
Source: Founder, during the flywheel interview.

Goal: Every new inquiry has a reply draft that matches the offer in canvas.md.
Done means: Each draft names the offer, asks one question and stays under the length in the job notes.
Where a human checks: The drafts folder. The founder reads each draft before anything is sent.
Inputs: canvas.md (Offer and Customer sections), the inquiry text.
Stop and ask when: The inquiry asks for a price, a discount or a promise the canvas does not cover.
Notes: Sending is a one-way door. The agent never sends.
```

## Jobs

The flywheel interview proposes three to five first jobs and adds the ones you keep below this line.

### Daily traction update

Status: Ready
Stage: Finance
Door: two-way
Serves: Get an offer in front of people and measure the response (essential)

Idea: Every morning, see the one number that shows whether the offer works, or see plainly that it can't be measured yet.
Source: The AI-Native Startup starter repo.

Goal: Each morning, `work/0_meta/traction.md` has a new entry with the highest traction rung you can measure and its number.
Done means: The first run sets a source (or "nowhere yet") for every rung, and today's entry names the top measurable rung, its number and one step to climb a rung. No number is invented.
Where a human checks: `work/0_meta/traction.md`, today's entry, read in the Claude desktop app after the scheduled run.
Inputs: canvas.md (Offer), flywheel.md (the one number per segment), the `traction-update` skill.
Stop and ask when: A source needs a login, a password or a paid tool. Anything would be sent outside your computer.
Notes: Then schedule it: Scheduled in the desktop app sidebar, daily, prompt `traction update`.
