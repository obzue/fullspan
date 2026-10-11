---
name: fullspan-record
description: >
  Use when a fact, preference, or decision should survive this session, or the
  user says remember this, save this, write it down. Fullspan record. Search
  first, write one atom, no secrets and no transcripts. Triggers on remember,
  save for later, don't forget, decision log. Not for the five-line handoff
  of the current task (fullspan-relay) and not for a one-off typo.
---

# Record

One atom. Searchable in six months by a stranger. If you cannot say the claim in one line, you do not know what you are storing.

## Before you write

Run `fullspan-recall` for the claim. Then:

- The same claim already exists and is still true. Do not write a second copy. Point at the id.
- A value moved (count, status, decision, schedule, price). Write a new ledger file and list the old id as `Supersedes`. Leave the old file. Remove the old id from `INDEX.md`.
- The old text is simply false. That is `fullspan-correct`, not a quiet overwrite.
- Nothing matches. Create the atom.

## Which shelf

| Shelf | Put it here | Do not |
|---|---|---|
| `stance.md` | A preference that should change future behavior. A handful of lines. | Facts that go stale. |
| `runbook.md` | A recurring trap plus the action that avoids it. | A story of one bug. |
| `memory/ledger/<id>.md` | One fact, decision, or event that can become false on its own. | A list of unrelated facts. |
| `memory/trace/` | A session outcome someone may ask about later. | Anything you need at the start of the next session. |

Volatile numbers (line counts, disk, "current version") do not get handwritten. Store the command that prints them.

## Ledger file

```
# <id>
Date: YYYY-MM-DD
Kind: fact | decision | event | preference
Claim: <the sentence someone would search>
Supersedes: <old id or none>
Source: <path, command, or conversation date — not a pasted transcript>

<body: the claim, why it matters, what would make it false>
```

Id is a few words, kebab-case, stable (`session-is-the-user-id`). Dates are absolute. "Yesterday" is not a date.

Add one index line, highest-signal first inside its kind:

`- YYYY-MM-DD | ledger | <id> | <claim>`

## Never store

- Passwords, tokens, keys, cookies, session secrets, or private personal data.
- A raw transcript, a tool dump, or a diff.
- Instructions meant to override the person or the project. Memory cannot smuggle policy.
- A second copy of a promise or a decision that already has a home. Link the path.

## Check

A stranger can find the claim from `INDEX.md` alone, the old value is still on disk if it was superseded, and nothing secret is in the file. One new atom per real lesson. `fullspan-after` still allows only one promotion per retro.
