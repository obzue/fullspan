---
name: fullspan-release
description: >
  Use when a promise is ready to leave the workbench: merge, deploy, publish,
  send, or hand to a real user. Fullspan release gate. Triggers on ship,
  launch, deploy, merge, go live, rollback. Requires fresh evidence and a way
  back.
---

# Release

Shipping is a decision with a way back, not a mood.

## Gate

All of these are true, or you are not releasing:

- The promise's done-when lines are checked, with evidence from this turn (`fullspan-council`).
- The build, test, or equivalent for this medium was run after the last edit. You read the result.
- Trust boundaries that moved have a shield check.
- You know how to undo it: revert the commit, flip the flag, unsend, take the page down. If you cannot undo, `fullspan-doubt` runs first.
- Someone knows what to watch for the first real use: one error, one metric, or one person who will try the job.

## Rollout

- Prefer a small audience before the whole audience when the medium allows it (flag, staged publish, a single reader).
- The hidden switch is written down next to the promise, not remembered.
- A release note is three lines: what changed for the user, what did not, how to undo. Skip the autobiography.

## After it is out

If the watch signal fires, you are in `fullspan-hunt`, not in a debate about whether the release was brave. Roll back first if users are hurt or data is wrong. Then hunt.

## Not a release

Work that only you will see, still inside a draft. Examine it anyway. Do not perform this gate as ceremony.
