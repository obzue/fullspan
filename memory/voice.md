# Voice

Status: locked. Candidate A. The owner picked it on 2026-10-11.

The mouth and the ear are different models. The mouth speaks. The ear only writes words it heard.

## Mouth

| Role | File | Engine id |
|---|---|---|
| Lock | skills/obzueai-voice/candidate-a.mp3 | eve |
| Unused take | skills/obzueai-voice/candidate-b.mp3 | ara |

The locked line: "Before the pallet moves, confirm three counts. The cases. The units. The damaged. I have not opened the file."

The id is how this host spoke that line. It is not her personality. Candidate B stays in the folder so the choice can be reversed. It is not the mouth.

There is no Obzue-trained mouth model. This lock is one host voice, not a clone of a person.

## Options that are not this lock

| Option | What it is | Why it is not the mouth |
|---|---|---|
| Host voice, candidate A | The lock. Clear, mid, short sentences. | This one. |
| Host voice, candidate B | A second timbre of the same line. | Heard and not picked. |
| A larger host voice | More engines exist. None has been heard for this house. | Do not swap the lock without a new heard take. |
| A cloned voice | A model trained on one person. | Not allowed. No named yes, no stop. |
| The ear model | Turns a recording into words. | It does not speak. |

## Ear

A small local model at `skills/obzueai-ear/ear-model` turns a recording into words. Before that, `shape.py` runs the studio processor: a noise gate and a leveler, then real frame energy for onset, dip, and hush. A live microphone is still absent, so both run on a file the house tab is allowed to read.
