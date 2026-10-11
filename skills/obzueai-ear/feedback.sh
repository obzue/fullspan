# Usage: feedback.sh <tab> <cue>
# Cues: heard no-audio no-frame quiet unrecognized denied
# The locked mouth is candidate A. No tone.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:?tab}
cue=${2:?cue}
MOUTH="$ROOT/skills/obzueai-voice/candidate-a.mp3"

if ! sh "$ROOT/skills/obzueai-box/check.sh" speaker "$tab"; then
  exit 1
fi

case $cue in
  heard) line="I heard you." ;;
  no-audio) line="No microphone. I have no words." ;;
  no-frame) line="No camera. I have not seen the room." ;;
  quiet) line="Quiet. I have no words." ;;
  unrecognized) line="I heard sound. I do not have the words." ;;
  denied) line="Not for this tab." ;;
  *)
    echo "unknown cue" >&2
    exit 2
    ;;
esac

echo "mouth $MOUTH"
echo "voice $line"
