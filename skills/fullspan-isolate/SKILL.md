---
name: fullspan-isolate
description: >
  Use before experimental or long-running implementation that must not dirty
  the main line, or when several attempts must stay separable. Fullspan
  workspace isolation. Triggers on worktree, branch, sandbox the change,
  don't touch main, spike. Skip for a tiny edit the user expects in place.
---

# Isolate

Try the risky work somewhere the main line cannot see it. Merge only after Examine.

## When

- The change will wander (a spike, a migration, a multi-slice promise).
- You might abandon the approach.
- Another session is using the main checkout.

Skip it when the user asked for a small in-place edit and a branch would only add ceremony.

## How

- New branch from a clean, current base. If the base is dirty, stop and ask or stash with a note. Do not build on unknown dirt.
- If the tool supports separate checkouts (git worktrees), prefer one checkout per attempt so installs and builds do not collide.
- Name the branch after the promise, not after the mood (`billing-refund-check`, not `wip-final2`).
- Run the project's checks once on the untouched branch so you know the baseline was already green. A red baseline is a fact you write down, not a failure you caused.

## Merge back

- The promise's checks pass on this branch.
- `fullspan-council` has no open blocks.
- You bring back the slice, not the debris of abandoned approaches. Dead files go before the merge.
- Tell the user what landed and what was thrown away.

## In a sandbox you do not own

Some environments have one workspace and a running preview. Do not invent a second checkout if that would break the preview. Isolate with a branch only if it is safe. Otherwise keep the diff small (`fullspan-slice`) and relay often (`fullspan-relay`) so the work is still reversible.
