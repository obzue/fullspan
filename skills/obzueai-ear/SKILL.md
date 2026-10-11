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

## When they are done

`skills/obzueai-ear/done.sh` separates three questions that get collapsed into one silence timer.

| Question | What answers it | What it must not do |
|---|---|---|
| Is this frame sound? | A high bar to start, a lower bar to stay. A short dip is a hang, not silence. | Chop a word ending, or start on a click. |
| Did the sound stop? | Quiet that lasts through the hang. That result is a gap. | Call the gap her turn. |
| Is the learner done? | The gap, and the phrase is finished. Only then the action is `done`. | Treat a cough, a backchannel, her echo, or a hush alone as done. |

A click that never holds is dropped. A dip while they are speaking becomes a hang, and if sound returns the hang is cancelled. A hush after the hang is `not-done`. `settled` is refused unless the state is already that gap.

There is no microphone on this machine. The house tab is allowed to try. Other tabs are denied. `recognize.sh` returns words only when a recognizer is installed and a file is given. A missing mic is `no-audio`. Sound with no recognizer is `sound-unrecognized`. Neither is a guessed sentence.

## Feedback

`feedback.sh` plays one tone and says one sentence. The tone is the sound. The sentence is the voice, and that voice is still the candidate, not a lock. The house speaker may play it. Another tab may not.

`skills/obzueai/attend.sh` is one pass: look, then listen, then the cue.

## Before the ear opens

1. The box allows `mic` for this tab, or it stays shut.
2. The box allows `speaker` separately, or she can hear and not talk.
3. The voice file has been heard (`obzueai-voice`), or the mouth has nothing honest to play.
4. Every open, stop, ignore, and deny is a line the watch can read.

## Done

You can say which tab, whether the ear and the mouth are on, and what the last event did. If she stopped for her own voice, or kept talking over real speech, the ear failed.
