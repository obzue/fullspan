---
name: obzueai-lesson
description: >
  The check for a Corta lesson. Use when a lesson is about to be called done,
  when the script has been read, or when the learner says they missed a step.
  Triggers on lesson check, did they learn it, quiz, teach-back. The lesson
  passes only if they can do the one step with the script closed. A nod is
  not a pass.
---

# Lesson check

Saying the script is not teaching. The lesson passes when the learner does one step without the script in front of them.

This is Assert for a lesson. Software and other artifacts still use `fullspan-assert`. The script itself still comes from `obzueai-corta`.

## Before the script

Write three lines:

1. **Step** — the one action this lesson exists to leave them able to do.
2. **Check** — what they will do, or say as an action, with the script closed.
3. **Fail** — what you will see if they cannot. If you cannot picture a fail, the check is a wish.

If they can already pass, stop. Teach a different step.

## During the check

- Close the script. Do not read the beat again.
- Do not hint, and do not finish the step for them.
- One check. Not a tour of the whole source.

## After

| What happened | What you do |
|---|---|
| They did the step | The lesson passes. Say the step back in one line. |
| They missed part of it | Name the miss in one line. Reteach only that. Do not replay the script. |
| They nodded, or you explained it | Not a pass. Run the check. |

Keep a real miss with `fullspan-record` if it should outlive the session: the step, the miss, nothing else. No transcript.

## Done

You can point at the step, the check, and what the learner did after the script was closed. Missing the third, the lesson is still open.
