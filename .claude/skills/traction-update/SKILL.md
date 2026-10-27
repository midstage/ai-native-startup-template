---
name: traction-update
description: Daily traction update for the founder. Reports the highest rung of the traction ladder the business can measure (revenue, users, signups, visitors, followers, conversations), its number today, and what it takes to climb one rung. Use when the founder says "traction update", "how are we doing", "send me the traction update", or when the daily scheduled run starts it.
---

# Traction update

Every business has one number that shows whether the offer works. Before launch, most founders can't see it yet. This update says so every morning, plainly, until they can. An update that reads "0 visitors" for a week should sting. That is the point: it pushes the founder to put an offer in front of people early and start measuring.

## The traction ladder

Report the highest rung you can measure. If a rung can't be measured, go down one rung. Never skip down past a rung without saying why.

1. **Revenue:** money received this week.
2. **Users:** people who used the product this week.
3. **Signups:** people who signed up, joined the waitlist or booked a call.
4. **Visitors:** people who saw the offer page.
5. **Followers:** people who follow the founder or the company where the offer gets posted.
6. **Conversations:** people the founder told about the offer this week.

If even conversations is zero, the number is zero. Report it as zero. Don't soften it.

## Where the numbers come from

The first run sets the sources. Read `canvas.md` (the offer) and `flywheel.md` (each segment's one number). Then ask the founder once, all at once: "For each rung, where can I read the number? A file, a dashboard export, an API, or 'nowhere yet'." Write the answers under **Sources** at the top of `work/0_meta/traction.md`.

Later runs read only those sources. Never invent or estimate a number. If a source can't be read today, write "not reported". It doesn't count as a measurement.

## The update

Append one entry to `work/0_meta/traction.md`, newest on top, and show the same text to the founder:

```
## YYYY-MM-DD

Top rung you can measure: <rung>
Today: <number> (yesterday: <number>, 7 days ago: <number>)
Not measured yet: <every rung above it>
Next rung up: <rung>. To measure it: <one concrete step, e.g. "put the offer on a page with a counter">.
```

Keep it to these lines. No encouragement, no excuses on the founder's behalf.

## Daily run

The founder schedules this in the Claude desktop app: **Scheduled** in the left sidebar, a daily task in this repo's folder, with the prompt `traction update`. The founder reads it when the run finishes. It never sends anything outside the founder's own computer.

## Rules

- Writing the entry is a two-way door. Sending it anywhere else (email, chat, a public post) is one-way: prepare it and ask.
- If the top rung moves up (for example, the first signup arrives), say so on the first line. That's the news.
