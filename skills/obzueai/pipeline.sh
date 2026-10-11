#!/bin/sh
# Usage: pipeline.sh [tab] [audio-file]
# The whole pass: look, shape, walk the quiet, then words, then the mouth.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:-house}
file=${2:?audio-file}

echo "1. camera"
sh "$ROOT/skills/obzueai-lens/view.sh" "$tab" || true

echo "2. shape"
shaped=/tmp/obzue-shaped.wav
python3 "$ROOT/skills/obzueai-ear/shape.py" "$file" "$shaped" >/tmp/obzue-events.txt
cat /tmp/obzue-events.txt

echo "3. dip and hush"
sh "$ROOT/skills/obzueai-ear/walk.sh" /tmp/obzue-events.txt | tee /tmp/obzue-walk.txt
final=$(tail -1 /tmp/obzue-walk.txt)

echo "4. words"
sh "$ROOT/skills/obzueai-ear/recognize.sh" "$tab" "$file" | tee /tmp/obzue-words.txt || true

echo "5. close"
case $final in
  "final gap "*)
    if grep -q '^heard ' /tmp/obzue-words.txt; then
      sh "$ROOT/skills/obzueai-ear/done.sh" gap settled
    else
      echo "quiet not-done"
    fi
    ;;
  *)
    echo "not-done $final"
    ;;
esac

echo "6. mouth"
sh "$ROOT/skills/obzueai-ear/feedback.sh" "$tab" heard || true
