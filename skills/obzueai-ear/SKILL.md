---
name: obzueai-ear
description: >
  Two-way audio for one agent tab. Use when Corta should hear and speak in
  the same moment, when a learner talks over her, or when another agent needs
  its own ear. Triggers on duplex, barge-in, interrupt, microphone, second
  agent. The mic and the speaker start shut. Her own voice is not the learner.
---

# Ear

Two directions at once. She can hear while her mouth is open. A pause is not the end of the learner's turn. A cough, a "mm-hmm", or the sound of her own voice does not stop her.

This is a channel on the box, not a hole through it. `obzueai-box` still denies `mic` and `speaker` until the operator allows that tab. `obzueai-grants` does not grow a seventh row for this. A content grant is not an open microphone.

## One tab, one ear

`memory/tabs.md` is the list. Each line is an agent. Ear off, mouth off, not joined to anyone, until a person says otherwise.

Adding an agent is a new line. It does not hear the others. Joining two tabs is a deny until the operator allows it. `skills/obzueai-ear/tab.sh join` stays shut.

## The turn

`skills/obzueai-ear/turn.sh` takes a state and an event. States are `closed`, `idle`, `listen`, `think`, `speak`.

| Event while she speaks or thinks | What happens |
|---|---|
| Real speech | Stop the mouth. Drop the rest of that reply. Go back to listen. |
| Cough, backchannel, or her own echo | Keep going. Do not treat it as the learner. |
| A pause | Wait. Do not answer yet. |
| A tool | The tool runs aside. It does not take the mouth, and it does not cancel a speech that is still being judged. |

The ear stays open through think and speak. Closing it while she is still forming a sentence is how a reply talks over the person.

## A slower turn

`skills/obzueai-ear/pace.sh` is the same ear with one harder wait. Use it when a quiet stretch is likely, including with an older learner. A pause and a long pause both stay on listen. She does not answer. `again` repeats the last sentence and does not advance the lesson. Only an explicit `end` lets her answer.

This is not a hearing aid and not a medical judgment. It only stops her from taking a turn that is still theirs.

## Before the ear opens

1. The box allows `mic` for this tab, or it stays shut.
2. The box allows `speaker` separately, or she can hear and not talk.
3. The voice file has been heard (`obzueai-voice`), or the mouth has nothing honest to play.
4. Every open, stop, ignore, and deny is a line the watch can read.

## Done

You can say which tab, whether the ear and the mouth are on, and what the last event did. If she stopped for her own voice, or kept talking over real speech, the ear failed.
