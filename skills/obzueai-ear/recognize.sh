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

if command -v whisper >/dev/null 2>&1; then
  whisper "$file" --language en --output_format txt --output_dir /tmp >/dev/null
  base=$(basename "$file")
  stem=${base%.*}
  text=$(tr '\n' ' ' < "/tmp/${stem}.txt" 2>/dev/null || true)
  if [ -n "$text" ]; then
    echo "heard $text"
    exit 0
  fi
fi

mean=$(ffmpeg -i "$file" -af volumedetect -f null - 2>&1 | awk -F': ' '/mean_volume/ {print $2}')
case $mean in
  ""|-inf*|-*[6-9][0-9].[0-9]*dB|-*[0-9][0-9][0-9]*)
    echo "quiet $tab"
    exit 0
    ;;
esac
echo "sound-unrecognized $tab"
exit 4
