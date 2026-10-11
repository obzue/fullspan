#!/bin/sh
# Usage: view.sh [tab]
# The only way the house agent opens a camera. One frame, then stop.
# Allow exits 0 only when a frame file was written. No device exits 3.
# A denied tab exits 1.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:-house}

if ! sh "$ROOT/skills/obzueai-box/check.sh" camera "$tab"; then
  exit 1
fi

dev=
for candidate in /dev/video0 /dev/video1 /dev/video2; do
  if [ -e "$candidate" ]; then
    dev=$candidate
    break
  fi
done

if [ -z "$dev" ]; then
  echo "no-frame $tab"
  exit 3
fi

out="/tmp/obzue-lens-${tab}.jpg"
rm -f "$out"
ffmpeg -y -loglevel error -f v4l2 -i "$dev" -frames:v 1 "$out"
echo "frame $out"
