---
name: fullspan-curate
description: >
  Use when reading or saving project memory and the store is getting noisy,
  duplicated, or stale. Fullspan curate. Triggers on clean up memory, the
  notes are a mess, too many memories, merge duplicates. Keeps the index
  short. Does not delete history. Not a reason to rewrite skills.
---

# Curate

Every read is a chance to throw out noise. A store that only grows becomes a second chat log, and then nobody recalls anything.

## On each read of the index or runbook

- Merge two lines that make the same claim. Keep the clearer one. Supersede the other. Do not leave both live.
- Drop a line that is a one-off timeline ("fixed the typo on Tuesday") with no next action.
- A runbook line without an action is not a runbook line. Give it an action or move it to trace.
- Cap `runbook.md` at 10 lines per shelf. If an eleventh appears, remove the lowest-value living line from the index. The file it pointed at can stay as history.
- Re-sort living lines so the costly misses are first.
- If a project fact is older than 30 days and the repo no longer matches it, supersede it or mark it unverified. Do not quietly rewrite history.

## What stays

- Preferences in `stance.md`, until the person changes them.
- A decision that later work still relies on.
- A correction whose Catch has not been turned into a real check yet.

## What never happens during curate

- Deleting ledger or trace files. Supersede, then unlist.
- Promoting a memory into a skill, a policy file, or AGENTS.md without `fullspan-author` and a human-visible edit. Memory is not allowed to rewrite the rules by itself.
- Compacting by asking a model to summarize the whole store into one blob. That destroys the atoms you needed to supersede.
- Storing a new secret you noticed while cleaning.

## Check

`INDEX.md` lists only living claims, each once. `runbook.md` is under the cap. You can still open an old id and see what it used to say.
