---
name: fullspan-author
description: >
  Use when a repeated task deserves its own skill: a new SKILL.md with a
  trigger-rich description, a short procedure, and a check that the skill
  changes behavior. Triggers on write a skill, new skill, capture this
  workflow, SKILL.md. Original text only. Do not clone another pack's files
  or wording.
---

# Author

A skill is a procedure the next session would otherwise invent badly. If you can say it in one sentence, it is a memory (`fullspan-after`), not a skill.

## Shape

```
skill-name/
  SKILL.md          # required
  references/       # only if the body would exceed ~200 lines
  scripts/          # only for a command you run the same way every time
```

Frontmatter:

- `name`: lowercase, hyphens, unique.
- `description`: when to use it, in the reader's words, including trigger phrases. Say when not to use it. Do not summarize every step in the description or the agent will follow the summary and skip the body.

Body:

- The rule, in a few lines.
- The steps.
- The check that proves the skill was followed.
- The mistakes that look like following the skill but are not.

Keep it under 200 lines. Push tables, vendor docs, and long examples into `references/` and point at them.

## Original

- You may learn from other skill packs. You may not copy their paragraphs, their templates, or their prompt files.
- Write the procedure in your own words from the failure you actually saw.
- A skill that only restates Fullspan does not get a file. Link the existing one.
- Vendor procedures stay thin and cite the official doc (`fullspan-scout`). They go stale; say what to re-check.

## Prove it

Before you trust the skill, run one realistic ask twice in your head or in a scratch session:

- Without the skill, where does the work go wrong?
- With the skill, which step would have blocked that?

If you cannot name the blocked failure, the skill is an essay. Cut it or rewrite it around the failure.

Descriptions are part of the product. Include the words a person would actually say ("the build is flaky," "write the pitch," "is this safe to ship").

## Install

Put the folder where that agent reads skills. In this workspace that is `.grok/skills/<name>/SKILL.md`. Keep the canonical copy in the Fullspan repo and copy outward. Do not edit only the installed copy.
