---
name: fullspan
description: >
  Router for making things inside ObzueAI Super Intelligent. Use when the user
  says Fullspan, MAKE, "skill set", or asks to build, design, write, research,
  or plan something non-trivial. Also use at the start of multi-step creation.
  If they name ObzueAI, Obzua, Corta, a voice, or a face, open obzueai first.
  Do not use for a one-step factual answer. Direct user orders and project
  instructions outrank this skill.
---

# Fullspan

How ObzueAI makes things: software, interfaces, documents, research, pictures, events, offers. The loop stays. The proof changes with the medium.

Teaching is `obzueai-corta`. Voice and likeness are `obzueai-presence`. The house name is `obzueai`.

## MAKE

1. **Map** — who it is for, the job it does, what done looks like, what it is not.
2. **Assert** — write a check that can fail, and see it fail, before the real artifact.
3. **Keep** — build the smallest slice that makes the check pass. Climb the least-work ladder.
4. **Examine** — fresh evidence from this turn, then review. Only then say done.

## What to open

| Situation | Skill |
|---|---|
| They named the house, Corta, a voice, or a face | `obzueai` |
| A lesson, a device, or a grant | `obzueai-corta`, `obzueai-grants` before any open, `obzueai-lesson` before done |
| Personality, speech, or a realistic face that must stay one person | `obzueai-presence`. Spoken audio is `obzueai-voice`. What she knows now is `obzueai-aware` |
| A material choice is still a guess | `fullspan-map` |
| Intent is clear enough to freeze | `fullspan-promise` |
| About to produce the artifact | `fullspan-assert` then `fullspan-slice` |
| Something is wrong and the cause is unknown | `fullspan-hunt` |
| About to call it done, merge, or ship | `fullspan-council` then `fullspan-release` |
| It works and feels larger than the job | `fullspan-pare` |
| Crosses a trust boundary (auth, money, private data, public input) | `fullspan-shield` |
| Someone wants it faster, smaller, or cheaper | `fullspan-measure` first |
| The facts live outside your head or in a vendor's docs | `fullspan-scout` |
| They ask for the best books, or a field on the shelf | `fullspan-shelf` |
| People will look at it | `fullspan-surface` |
| It is mostly language | `fullspan-voice` |
| Two or more independent chunks | `fullspan-swarm` |
| Another session must continue | `fullspan-relay` |
| Starting work in a project that already remembers | `fullspan-awaken` then `fullspan-recall` |
| A fact or preference must outlive the session | `fullspan-record` |
| The user corrects a stored or repeated belief | `fullspan-correct` |
| The memory store is noisy or duplicated | `fullspan-curate` |
| Hard to undo, public, or safety-touching | `fullspan-doubt` |
| The session taught a repeated miss | `fullspan-after`, maybe `fullspan-author` |
| The main line must stay untouched while you try something | `fullspan-isolate` |

Craft skills specialize Keep and Examine. They do not replace the loop. Corta does not replace the loop either. A lesson that produces an artifact still Maps, Asserts, Keeps, and Examines.

## Authority

1. Direct instructions from the person you are working with.
2. Project instructions for the environment (AGENTS.md and its kin).
3. The house (`obzueai`), then Fullspan.
4. Habit.

If they say skip the questions and build: write the assumptions in a short list and enter Assert. Do not stall. A device grant is not one of those questions you skip. Corta still asks.

## Leave the loop closed when

- They asked a question. Answer it.
- The change is already fully specified and tiny (a named color, a typo, one constant). Do it and show evidence.
- A tighter local skill owns the craft. Follow that skill for the surface. Fullspan still forbids calling done without a fresh check.

## Honest loop

- Name the medium before the tools.
- One open question at a time while mapping. No dumped questionnaires.
- If a check cannot fail, it is a wish, not Assert.
- No patch in Hunt until you can point at the layer that diverges.
- "Should work" is not Examine. Run the check this turn and read the output.
- Do not paste another pack's wording into a new skill. Distill the behavior. Write your own.
- Do not put a copyrighted name, a living person's likeness, or a vendor's product name into a new skill to borrow their fame.
- Parallel workers get independent outputs only. Shared files have one owner.
- Irreversible choices get doubt: claim, evidence, best objection, what would change your mind.

## Done

You can point at four things: the promise, the check, the artifact, and evidence the check passed after the artifact existed. Missing any one, you are not done.
