#!/bin/sh
# Usage: attend.sh [tab]
# One pass for Obzue's agent: one camera frame, then listen, then a cue.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
tab=${1:-house}

sh "$ROOT/skills/obzueai-lens/view.sh" "$tab" || view=$?
view=${view:-0}
sh "$ROOT/skills/obzueai-ear/recognize.sh" "$tab" || hear=$?
hear=${hear:-0}

if [ "$view" -eq 1 ] || [ "$hear" -eq 1 ]; then
  sh "$ROOT/skills/obzueai-ear/feedback.sh" house denied || true
  exit 1
fi

sh "$ROOT/skills/obzueai-ear/feedback.sh" "$tab" no-frame || true
if [ "$hear" -eq 3 ]; then
  sh "$ROOT/skills/obzueai-ear/feedback.sh" "$tab" no-audio || true
fi
exit 0
