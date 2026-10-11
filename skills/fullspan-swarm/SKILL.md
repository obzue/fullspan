---
name: fullspan-swarm
description: >
  Use when two or more pieces of work do not share state and can proceed at
  the same time, including helper agents. Fullspan parallel skill. Triggers
  on parallel, subagents, split the work, concurrent tasks. Do not split
  work that shares files, a design that is still moving, or a single
  diagnosis.
---

# Swarm

Parallel work is for independent outputs. It is not a way to look busy.

## Split only when

- Each chunk has its own done-when line and its own check.
- The chunks do not write the same files, the same types, or the same decision.
- The promise is already frozen. Do not parallelize Map.
- A failure in one chunk does not require the others to restart.

If any of those is false, it is a queue for one owner.

## Brief each worker

Give them only:

- The done-when line they own.
- The check that must go from fail to pass.
- The files they may touch. An explicit do-not-touch list if neighbors are fragile.
- Where to put the result.

Do not give them your whole conversation. Do not give two workers the same file "to be safe."

## Integrate

- You, the owner, read each result against its check. A worker's "done" is a claim, not evidence.
- Conflicts mean the split was wrong. Do not merge by vibe. Re-sequence.
- A shared contract (types, routes, visual tokens, the promise) is written first, by one owner, before the swarm starts. Workers do not invent competing contracts.

## Diagnosis is not a swarm

`fullspan-hunt` is one mind following one divergence. Extra agents guessing fixes in parallel create extra bugs. The exception is search: several agents may look for evidence in disjoint places, then one mind forms the hypothesis.

## Review can be a swarm

A cold reviewer who did not implement, given only the promise and the diff, is a good second axis. They do not also edit.
