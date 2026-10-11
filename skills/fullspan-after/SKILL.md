---
name: fullspan-after
description: >
  Use at the end of a meaty session, or when the same miss happened twice, to
  decide what the environment should remember. Fullspan retro. Triggers on
  retro, postmortem, what did we learn, turn this into a skill. Produces at
  most one memory and optionally a new skill via fullspan-author.
---

# After

A session that taught you nothing should not produce a document. A session that taught you the same lesson twice should change the environment.

## Three questions

1. Where did we almost ship a wish instead of a check?
2. Where did the tool or the repo fight the promise (missing command, lying docs, a trap in the defaults)?
3. What should the next session know in one sentence?

If all three are empty, stop. Do not write a retro for the feeling of completeness.

## One memory

Keep a single running note, `MEMORY.md` or the project's existing decision log. Add at most one bullet:

- The sentence.
- The date.
- The path or command that makes it true.

Do not archive the chat. Do not store secrets.

## Promote or not

Turn the bullet into a skill (`fullspan-author`) only if:

- It will recur in this kind of work, and
- A checklist or a command would have prevented the miss, and
- It is not already in Fullspan or a local skill.

Otherwise the bullet is enough. A skill for a one-off is clutter.

## Blame

The retro names the missing check or the missing tool. It does not name a villain. If a person was harmed or data was lost, write what the watch signal should have been (`fullspan-release`) and add that signal.
