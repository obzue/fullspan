#!/bin/sh
# Usage: recognize.sh <tab> [audio-file]
# Words come only from a recognizer. Silence and a missing mic are not words.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:?tab}
file=${2:-}

if ! sh "$ROOT/skills/obzueai-box/check.sh" mic "$tab"; then
  exit 1
fi

if [ -z "$file" ]; then
  if [ ! -d /dev/snd ]; then
    echo "no-audio $tab"
    exit 3
  fi
  echo "no-audio $tab"
  exit 3
fi

if [ ! -f "$file" ]; then
  echo "no-audio $tab"
  exit 3
fi

wav=/tmp/obzue-hear.wav
shaped=/tmp/obzue-shaped.wav
rm -f "$wav" "$shaped"
python3 "$ROOT/skills/obzueai-ear/shape.py" "$file" "$shaped" >/tmp/obzue-events.txt
ffmpeg -y -loglevel error -i "$shaped" -ac 1 -ar 16000 "$wav"
text=$(python3 "$ROOT/skills/obzueai-ear/transcribe.py" "$wav" || true)
if [ -n "$text" ]; then
  echo "heard $text"
  exit 0
fi
echo "quiet $tab"
exit 5
