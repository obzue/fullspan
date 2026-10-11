---
name: fullspan
description: >
  Router for the Fullspan skill set. Use when the user says Fullspan, MAKE,
  "skill set", or asks to build, design, write, research, or plan something
  non-trivial with a method that can create anything. Also use at the start of
  multi-step creation when you would otherwise improvise the process. Do not
  use for a one-step factual answer. Picks Map, Assert, Slice, Hunt, Council,
  and the craft skills. Direct user orders and project instructions outrank
  this skill.
---

# Fullspan

A way to make things: software, interfaces, documents, research, pictures, events, offers. The loop stays. The proof changes with the medium.

## MAKE

1. **Map** — who it is for, the job it does, what done looks like, what it is not.
2. **Assert** — write a check that can fail, and see it fail, before the real artifact.
3. **Keep** — build the smallest slice that makes the check pass. Climb the least-work ladder.
4. **Examine** — fresh evidence from this turn, then review. Only then say done.

## What to open

| Situation | Skill |
|---|---|
| A material choice is still a guess | `fullspan-map` |
| Intent is clear enough to freeze | `fullspan-promise` |
| About to produce the artifact | `fullspan-assert` then `fullspan-slice` |
| Something is wrong and the cause is unknown | `fullspan-hunt` |
| About to call it done, merge, or ship | `fullspan-council` then `fullspan-release` |
| It works and feels larger than the job | `fullspan-pare` |
| Crosses a trust boundary (auth, money, private data, public input) | `fullspan-shield` |
| Someone wants it faster, smaller, or cheaper | `fullspan-measure` first |
| The facts live outside your head or in a vendor's docs | `fullspan-scout` |
| People will look at it | `fullspan-surface` |
| It is mostly language | `fullspan-voice` |
| Two or more independent chunks | `fullspan-swarm` |
| Another session must continue | `fullspan-relay` |
| Hard to undo, public, or safety-touching | `fullspan-doubt` |
| The session taught a repeated miss | `fullspan-after`, maybe `fullspan-author` |
| The main line must stay untouched while you try something | `fullspan-isolate` |

Craft skills specialize Keep and Examine. They do not replace the loop.

## Authority

1. Direct instructions from the person you are working with.
2. Project instructions for the environment (AGENTS.md and its kin).
3. Fullspan.
4. Habit.

If they say skip the questions and build: write the assumptions in a short list and enter Assert. Do not stall.

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
- Parallel workers get independent outputs only. Shared files have one owner.
- Irreversible choices get doubt: claim, evidence, best objection, what would change your mind.

## Done

You can point at four things: the promise, the check, the artifact, and evidence the check passed after the artifact existed. Missing any one, you are not done.
