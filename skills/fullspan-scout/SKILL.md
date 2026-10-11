---
name: fullspan-scout
description: >
  Use when a decision depends on facts you do not hold, on a library's real
  API, on official docs, or on the outside world. Fullspan research skill.
  Triggers on look up, docs, cite, current version, how does X work, market,
  prior art. Separate what you read from what you guessed. Do not invent APIs.
---

# Scout

If it matters and it is not in the repo or the conversation, go read it. Memory of an API is a rumor.

## The note

Keep a short note beside the work, not a report for its own sake.

```
Question:
What would change our mind:
Sources (title, url, date seen):
Facts (only what a source says):
Unknowns:
Implication for the promise:
```

- A fact has a source. An inference is labeled inference.
- Prefer the official doc, the source file, or the dataset over a blog recap. Use a recap only to find the primary source.
- Quote sparingly. A line of an API signature is fair. A chapter is not.
- If two primary sources disagree, say so and do not pick the one that makes the slice easier.
- Version and date matter. A skill or tutorial from last year does not outrank current docs.

## In code

- Do not invent a function, flag, or endpoint. If the doc and the installed types disagree, the installed types win for what you can call, and the doc tells you what the project meant.
- Pin the decision in the promise's "calls we made" once you have a source.
- A vendor-specific procedure (a cloud product, an SDK) stays a thin note for this project. Do not fork an entire product encyclopedia into the skill set. If the procedure will be repeated, `fullspan-author` can make one small skill from the note.

## Stop

The question is answered well enough to choose, or you have written the unknown honestly and designed the slice so the unknown cannot corrupt users. Endless reading is not scouting.
