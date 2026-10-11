---
name: fullspan-slice
description: >
  Use when a failing check exists and it is time to make the smallest change
  that passes it. Fullspan Keep step. Triggers on implement, build this,
  vertical slice, smallest diff, YAGNI. Climb the least-work ladder before
  writing anything new. Do not use to design the product; that is map and
  promise. Do not use to guess a bugfix; that is hunt.
---

# Slice

One check. The smallest change that makes it pass. Then stop.

## Least-work ladder

Climb until a rung holds. Do not skip ahead because writing feels faster.

1. Does this need to exist to keep the promise? If no, do not build it.
2. Is it already in this codebase or this draft? Use it.
3. Is it in the language's standard library or the platform you are already on?
4. Is it a native feature of the tool the user already has?
5. Is it an installed dependency, used plainly?
6. Can it be one clear path, not a framework?
7. Only then write the minimum that turns the check green, plus the wiring the check actually exercises.

Do not add a second mode, a config flag, or an abstraction for a second caller who does not exist.

## How to cut the work

- A slice maps to one done-when line from the promise.
- It fits in one review. If you cannot describe the diff in a few sentences, it is two slices.
- Touch only the files the check requires. Match the style around you. Do not reformat neighbors.
- No error handling, fallbacks, or validation for cases that cannot happen inside the system. Validate at the boundary (user input, network, files you do not control). That boundary work is `fullspan-shield`, not decoration.
- When the check goes green, run the rest of the relevant suite or the medium's equivalent. Green on one test and red on the neighbors is not a slice.
- Commit or otherwise snapshot only when the project expects it, and only with a message that names the done-when line. Do not commit on a red check.

## Order inside a larger promise

List slices so each one leaves the thing usable, not half-wired. Prefer a thin path through the whole job over a finished basement and no door.

If several slices share no files and no ordering, `fullspan-swarm` may take them. If they share a file, they are one owner's queue.

## Don't stall

Once they have accepted the promise and the slice list, continue until the checks are green. Stop only for:

- an irreversible or destructive act,
- a trust boundary you have not shielded,
- a side effect outside this workspace (publishing, messaging real people, spending money),
- a promise so contradictory that every next step is a guess.

Anything else is a ruling you write down (decision, why, cost if wrong) and keep going. Unwritten deviations are secret decisions. Show the rulings when you relay or release.
