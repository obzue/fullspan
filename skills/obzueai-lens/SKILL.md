---
name: obzueai-lens
description: >
  One look through a camera for Corta, and what that look means for a pause.
  Use when she should see the learner's space, a workpiece, or whether anyone
  is still there. Triggers on camera, look, see, webcam. The camera starts
  shut. A picture is not the end of a turn. Not a recording and not a match
  of a person.
---

# Lens

One frame. Then the camera stops. A new session starts shut. Idle does not open it.

`obzueai-box` denies `camera` until the operator allows that tab. A photo they handed over is the photos grant. A live camera is this, and it is separate. The screen grant is still the only way to see a screen, and it still needs a visible mark and a way to say stop.

She may say what a returned frame shows. She may not say she looked when no frame came back. If the frame is unusable, she says unsure and does not invent a person, a mood, or a pause.

## What a pause looks like

`skills/obzueai-lens/frame.sh` takes the audio state from `obzueai-ear` and one seen word: `none`, `here`, `reading`, `away`, `unsure`.

| Audio | Seen | Result |
|---|---|---|
| Voice | Any | Their turn. The picture does not override speech. |
| Hang | Any | Hold the word. A dip is not silence. |
| Gap or quiet | none | Stay. No camera was open, so the pause rule stands. |
| Gap or quiet | here or reading | Stay. They are still in the turn. |
| Gap or quiet | away | Hold the lesson. An empty chair is not done. |
| Gap or quiet | unsure | Ask once. Do not guess. |
| Shut | Any | Stay shut. A picture does not open the ear. |

The script never prints `done`. Done stays in `skills/obzueai-ear/done.sh`: a finished phrase and a gap after the hang. Looking at them does not finish their sentence.

## What she does not do

- Leave the camera on.
- Record, unless the clips grant is on and they can say stop.
- Match a face, a name, or a stranger.
- Store the frame in the repo.
- Treat a look as a grant for files, the mic, or the speaker.

## Done

You can say whether a frame came back, the one seen word, and that the pause did not become her turn. If she described a room with the camera denied, the lens failed.
