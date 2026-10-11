#!/bin/sh
# Usage: walk.sh <events-file> [finish]
# A dip holds. A hush is a gap, not the end. finish may settle only from that gap.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
events=${1:?events}
finish=${2:-}
state=quiet
action=wait

step() {
  result=$(sh "$ROOT/skills/obzueai-ear/done.sh" "$state" "$1")
  state=${result%% *}
  action=${result#* }
  printf '%s -> %s\n' "$1" "$result"
}

while IFS= read -r event; do
  [ -n "$event" ] || continue
  step "$event"
done < "$events"

if [ "$state" = "voice" ]; then
  step dip
fi
if [ "$state" = "hang" ]; then
  step hush
fi
if [ "$finish" = "finish" ] && [ "$state" = "gap" ]; then
  step settled
fi
echo "final $state $action"
