#!/bin/sh
# Usage: feedback.sh <tab> <cue>
# Cues: heard no-audio no-frame quiet unrecognized denied
# A tone is the sound. The sentence is the voice. The voice is still a candidate.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:?tab}
cue=${2:?cue}
CUES="$ROOT/skills/obzueai-ear/cues"

if ! sh "$ROOT/skills/obzueai-box/check.sh" speaker "$tab"; then
  exit 1
fi

case $cue in
  heard)
    tone=yes.wav
    line="I heard you."
    ;;
  no-audio|no-frame|quiet|unrecognized|denied)
    tone=no.wav
    ;;
  *)
    echo "unknown cue" >&2
    exit 2
    ;;
esac

case $cue in
  no-audio) line="No microphone. I have no words." ;;
  no-frame) line="No camera. I have not seen the room." ;;
  quiet) line="Quiet. I have no words." ;;
  unrecognized) line="I heard sound. I do not have the words." ;;
  denied) line="Not for this tab." ;;
esac

echo "sound $CUES/$tone"
echo "voice $line"
