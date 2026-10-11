---
name: obzueai-box
description: >
  The tab an agent runs in. Use before a file read, a file write, a network
  call, a secret, or a process change. Triggers on sandbox, isolate the agent,
  containment, least privilege, what may it touch. Deny by default. The agent
  does not edit the policy. Not a kernel and not a separate chip.
---

# Box

One agent, one tab. The tab does not see the rest of the machine. Other tabs do not see this one.

The policy lives in `memory/box.rules`. The person owns it. The agent does not rewrite it to allow itself.

## Before an action

Run `skills/obzueai-box/check.sh` with a kind and a target.

| Kind | Target |
|---|---|
| file-read | A path inside the repo, like `fullspan/README.md` |
| file-write | A path the action would change |
| net | A host name |
| secret | The name of the secret, never the value |
| process | What would change privilege |

Allow prints `allow` and exits 0. Deny prints `deny` and exits 1. Either way, one line is appended to `memory/audit.log`.

A deny is a hold. Do not do the action. Ask once if the person wants the policy changed. They change `box.rules`. You do not.

## Two yeses

`obzueai-grants` is the person's yes for a device, a photo, a clip, a PDF, a screen, or one named file. The box is the machine's yes. A lesson does not open a file unless both pass.

Secrets stay out of the tab. If a call needs one, the operator attaches it for that destination only. The agent never sees the value, and never writes it into the repo.

## What this is not

A prompt that says "be careful" is not a box. A check the agent can skip by editing the checker is not a box. This repository's checker is the first rung. A kernel boundary, and a watcher on another processor, are later rungs. Do not say they are installed here.

## Done

You can point at the rule that matched, the audit line, and whether the action ran. If it ran on a deny, the box failed.
