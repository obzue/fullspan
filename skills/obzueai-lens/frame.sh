#!/bin/sh
# Usage: frame.sh <audio> <seen>
# audio: shut voice hang gap quiet
# seen: none here reading away unsure
# Never prints done. A picture does not end the learner's turn.
set -eu
audio=${1:?audio}
seen=${2:?seen}

case $seen in
  none|here|reading|away|unsure) ;;
  *)
    echo "unknown seen" >&2
    exit 2
    ;;
esac

if [ "$audio" = "shut" ]; then
  echo "shut closed"
  exit 0
fi

case $audio in
  voice)
    echo "listen take"
    ;;
  hang)
    echo "hang hold"
    ;;
  gap|quiet)
    case $seen in
      away) echo "listen hold" ;;
      unsure) echo "listen ask" ;;
      *) echo "listen stay" ;;
    esac
    ;;
  *)
    echo "unknown audio" >&2
    exit 2
    ;;
esac
