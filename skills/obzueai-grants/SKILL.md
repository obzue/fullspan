---
name: obzueai-grants
description: >
  The grant log for Corta. Use before proposing to open a device, an app, a
  site, a photo, a clip, a PDF, a screen recording, or a private file, and
  whenever a grant is allowed or taken back. Triggers on grant, permission,
  consent, take control, screen record. Read memory/grants.md. Do not trust
  chat memory over that file.
---

# Grant log

A grant is a line in `memory/grants.md`. A sentence in chat is not a grant until that line changes.

`obzueai-corta` decides which action needs which grant. This skill is the shelf those decisions read. All six start off.

## The file

One project, one log. Create `memory/grants.md` if it is missing.

```
# Grants

Device class: unset
Learner: unset
Updated: YYYY-MM-DD

| Grant | State | Since | Scope |
|---|---|---|---|
| device | off | YYYY-MM-DD | |
| photos | off | YYYY-MM-DD | |
| clips | off | YYYY-MM-DD | |
| pdfs | off | YYYY-MM-DD | |
| screen | off | YYYY-MM-DD | |
| private-docs | off | YYYY-MM-DD | named file only |

## Changes

- YYYY-MM-DD | grant | off to on, or on to off | who said it | scope
```

## Rules

- One row per grant. State is `on` or `off`. Since is the date of the current state.
- A change appends under Changes. Do not erase the old row's history by rewriting the past.
- Private documents name one file in Scope. "All documents" is not a grant. Leave it off.
- Screen `on` is allowed only with a visible mark and a way to say stop. Write that in Scope.
- Device `on` does not turn the other five on.
- No secrets, no file contents, no transcripts. A file name is enough.

## Before a proposed action

Read the log. Then:

- The row is `off`. Propose nothing that needs it. Say which grant is off.
- The row is `on` and the scope covers this action. Propose the step. Do not say it already happened.
- The log disagrees with a chat note or an old memory. The log wins. If the person corrects it, append a change and then follow the new row.

A grant change that should be recalled next session can also be one atom through `fullspan-record`. The log stays the source. The atom points at it.

## Done

A stranger can open `memory/grants.md` and know each grant, the date, and the scope, without reading the chat.
