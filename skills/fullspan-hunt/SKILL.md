---
name: fullspan-hunt
description: >
  Use at the first sign of a bug, test failure, broken build, flaky behavior,
  or "it doesn't work", before any fix. Fullspan diagnosis. Triggers on debug,
  error, regression, crash, unexpected output, performance mystery. Find the
  layer where truth diverges before changing code.
---

# Hunt

No fix until you can point at the cause. A patch that hides the symptom is a second bug.

## Phase 1 — see it

1. Read the whole error. Stack, code, path, exit status. Do not skim to the first familiar word.
2. Reproduce it with the shortest path. If you cannot, you are not allowed to guess a fix. Gather one more fact.
3. Ask what changed: diff, config, dependency, data, environment. Most new failures are new differences.
4. Write one sentence: "Expected X, observed Y, at boundary Z."

## Phase 2 — locate the layer

When more than one component is involved, do not theorize across all of them.

- At each boundary, record what goes in and what comes out.
- The first boundary where input is right and output is wrong is the layer you own.
- Only that layer gets a hypothesis.

A hypothesis is a sentence you can falsify with one run: "If I log the session id here it will be empty." Run it. If the sentence was false, drop it. Do not stack a second fix on a live first guess.

## Phase 3 — lock it

Turn the reproduction into a check (`fullspan-assert`): a test, a script, or a written click-path that fails the way the user saw. Watch it fail.

## Phase 4 — fix the cause

`fullspan-slice` makes that check pass. Then:

- Remove the temporary logs you added, or turn them into the one log the system actually needs.
- If the cause was a missing guard at a trust boundary, add the guard there. Do not sprinkle guesses at every layer.
- Run the original reproduction again, not a cousin of it.

## Pressure

The urge to skip a phase gets stronger when someone is waiting, the bug "looks obvious," or the last fix did not work. Those are the times the phases are mandatory. Three wrong patches cost more than one careful trace.

## Not a hunt

A requested behavior change with no failure. That is Map or Assert, not a bug.
