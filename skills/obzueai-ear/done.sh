#!/bin/sh
# Usage: done.sh <state> <event>
# Voice activity is not the end of a turn.
# States: shut quiet pending voice hang gap
# Events: onset held dip hush settled cough backchannel echo
# Prints: <next-state> <action>
# done is the only action that means the learner has finished.
set -eu
state=${1:?state}
event=${2:?event}

if [ "$state" = "shut" ]; then
  echo "shut closed"
  exit 0
fi

case $event in
  onset)
    case $state in
      quiet|gap) echo "pending open" ;;
      hang|voice|pending) echo "voice keep" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  held)
    case $state in
      pending|voice) echo "voice keep" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  dip)
    case $state in
      voice|pending) echo "hang hold" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  hush)
    case $state in
      pending) echo "quiet drop" ;;
      hang|gap) echo "gap not-done" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  settled)
    case $state in
      gap) echo "quiet done" ;;
      *) echo "$state not-done" ;;
    esac
    ;;
  cough|backchannel|echo)
    echo "$state ignore"
    ;;
  *)
    echo "unknown event" >&2
    exit 2
    ;;
esac
