---
name: fullspan-promise
description: >
  Use after intent is clear enough to freeze, before planning or building.
  Fullspan step that writes a one-page promise: job, non-goals, acceptance,
  constraints, and risks. Triggers on spec, PRD, brief, "write it down",
  scope, acceptance criteria. Do not use to interview; that is fullspan-map.
---

# Promise

A promise is a page you can argue with. If it cannot be wrong, it is not done.

## Write this, and nothing longer

```
# <name>
For: <who>
Job: <one sentence>
Medium: <code | interface | words | picture | research | event | offer | mix>

Done when:
- <observable>
- <observable>
- <observable>

Not this:
- <non-goal>
- <non-goal>
- <non-goal>

Constraints:
- <time, stack, brand, law, budget, platform — only real ones>

Risks:
- <way it fails even if the checklist is green>

Calls we made (not things they confirmed):
- <assumption>
```

Put it where the project keeps decisions (a `PROMISE.md` at the work root, or the issue/ticket if that is the system's memory). Do not invent a second docs tree.

## Rules

- Done-when lines are observable. "Feels fast" becomes "the main action responds without a spinner on a warm load" or a number from `fullspan-measure`.
- Non-goals are load-bearing. They are how you say no later.
- Constraints you cannot trace to the user, the project, or physics get deleted or marked as your call.
- If two done-when lines conflict, go back to Map with that one conflict. Do not average them.
- A promise for a bug is the symptom, the expected behavior, and where it must not regress. Still one page.

## Then

Break the promise into slices only after the page exists. Each slice in `fullspan-slice` must point at one done-when line. If a slice points at nothing, it is not in this promise.

Open `fullspan-assert` before any slice is built.
