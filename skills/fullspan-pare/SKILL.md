---
name: fullspan-pare
description: >
  Use after a check is green, when the solution feels larger than the job, or
  when asked to simplify, delete, or "clean this up" without changing behavior.
  Fullspan pare step. Triggers on refactor, simplify, YAGNI, too much code,
  abstraction. Do not use to add features. Do not delete a guard you do not
  understand.
---

# Pare

Working and small beat working and clever. Pare only after green, and stay green.

## The cut

Read the diff and mark every piece as one of:

- **Load-bearing** — the check fails if you remove it.
- **Boundary** — validation, auth, or safety at a real edge. Keep.
- **Habit** — an abstraction, wrapper, flag, or comment that no caller needs.

Delete habit. Re-run the checks. If they stay green, the deletion stands.

## Ladder, again

If a whole slice can move down the least-work ladder (standard library instead of a helper, platform feature instead of a dependency), do that as its own slice with the same checks. One descent at a time.

## Do not touch

- A fence you cannot explain. If you do not know why a check, a lock, or a weird branch exists, find out (`fullspan-scout` in the history, or ask). Then decide.
- Behavior the promise still requires, even if it looks unused from the file you have open.
- Formatting or renames mixed into a behavior cut. Separate them or skip them.

## Done

The same checks pass, the diff is shorter or flatter, and you can name what you refused to delete and why.
