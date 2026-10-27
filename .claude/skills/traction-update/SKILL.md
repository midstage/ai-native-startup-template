---
name: traction-update
description: Daily traction update for the founder, in three parts. Offers (how many are live, with a price), traffic (the highest rung you can measure: visitors, followers, conversations) and sales (revenue, users, signups). Names the weakest of the three and one step to fix it. Use when the founder says "traction update", "how are we doing", "send me the traction update", or when the daily scheduled run starts it.
---

# Traction update

A business needs three things working: **offers**, **traffic** that sees them, and **sales** that come from them. Before launch, most founders have none of the three, or can't see them. This update says so every morning, plainly, until they can. An update that reads "Offers: 0 live" or "0 visitors" for a week should sting. That's the point: it pushes the founder to put an offer in front of people early and start measuring.

## The three parts

Check them in this order. Traffic means little without an offer, and sales mean little without traffic.

**1. Offers.** Read the Offer section of `canvas.md`. Strive for more than one offer: one offer is a single bet, and a second (a smaller entry offer, or a bigger one for the customers who want more) tells you which one people actually want. Count each offer as:
- **Written, not live:** it's in `canvas.md`, but nobody outside can see it or buy it.
- **Live:** people can see it, with a price, at a place you can name (a page, a post, a pitch you give).

**2. Traffic: people who saw the offer.** Report the highest rung you can measure:
1. **Visitors:** people who saw the offer page.
2. **Followers:** people who follow you where the offer gets posted.
3. **Conversations:** people you told about the offer.

**3. Sales: people who said yes.** Report the highest rung you can measure:
1. **Revenue:** money received.
2. **Users:** people who used the product.
3. **Signups:** people who signed up, joined the waitlist or booked a call.

If a rung can't be measured, go down one. If even the lowest rung is zero, report zero. Don't soften it.

## Where the numbers come from

The first run sets the sources. Read `canvas.md` (the offers) and `flywheel.md` (each segment's one number). Then ask the founder once, all at once: "For each rung, where can I read the number? A file, a dashboard export, an API, or 'nowhere yet'. And which of your offers are live, where, and at what price?" Write the answers under **Sources** at the top of `work/0_meta/traction.md`.

Later runs read only those sources. Never invent or estimate a number. If a source can't be read today, write "not reported". It doesn't count as a measurement.

## The update

Append one entry to `work/0_meta/traction.md`, newest on top, and show the same text to the founder:

```
## YYYY-MM-DD

Offers: <n> live (<name, price, where> each), <n> written, not live
Traffic: <rung> <number> (yesterday <number>, 7 days ago <number>). Not measured yet: <rungs above it>
Sales: <rung> <number> (yesterday <number>, 7 days ago <number>). Not measured yet: <rungs above it>
Weakest: <offers | traffic | sales>. Next step: <one concrete step, e.g. "put the offer on a page with a price and a visitor counter">.
```

**Weakest** is the first of the three, in order, that is at zero: no live offer beats everything else. Always count the offers, even when there is only one. Whenever fewer than two are live, add one line: "One offer is one bet. Next offer to test: <a suggestion from canvas.md>". Keep the entry to these lines. No encouragement, no excuses on the founder's behalf.

## Daily run

The founder schedules this in the Claude desktop app: **Scheduled** in the left sidebar, a daily task in this repo's folder, with the prompt `traction update`. The founder reads it when the run finishes. It never sends anything outside the founder's own computer.

## Rules

- Writing the entry is a two-way door. Sending it anywhere else (email, chat, a public post) is one-way: prepare it and ask.
- If something moves up (an offer goes live, the first signup arrives), say so on the first line. That's the news.
