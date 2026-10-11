---
name: obzueai-watch
description: >
  The seat outside the agent. Use after a box check, when an action was
  denied, or when someone asks who stops a tab that left its policy. Triggers
  on watch, monitor, escalate, quarantine, out of bounds. The agent does not
  clear a cut. This repo can see a deny. It is not a separate chip.
---

# Watch

The box decides. The watch sees the decision from outside the tab. The agent does not grade itself, and it does not delete the audit to look innocent.

Read `memory/audit.log` with `skills/obzueai-watch/look.sh`.

## Ladder

| Step | When | What you do |
|---|---|---|
| Note | The line says allow | Leave it. The audit is the record. |
| Hold | The line says deny | The action stays unrun. Tell the person which rule held. One question. |
| Cut | The person says stop, or the same deny repeats | Stop the tab. Do not patch the agent first. Look after it is stopped. |

A hold is the check exiting 1. A cut is a person, or a later seat that is not this process. Do not invent a chip and call it a cut.

## Outside

The watcher and the worker are not the same trust. In this repo that means:

- The agent does not edit `memory/watch.md`, `memory/box.rules`, or `memory/audit.log` to erase a deny.
- A tool result the agent did not just read is not a fact (`obzueai-aware`).
- If the worker and the log disagree, the log wins.

## Done

You can show the audit line and the rung: note, hold, or cut. A deny with the action still done is a failed watch.
