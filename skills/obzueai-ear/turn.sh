#!/bin/sh
# Usage: turn.sh <state> <event>
# States: closed idle listen think speak
# Events: speech pause end cough backchannel echo tool
# Prints: <next-state> <action>
set -eu
state=${1:?state}
event=${2:?event}

if [ "$state" = "closed" ]; then
  echo "closed shut"
  exit 0
fi

case $event in
  speech)
    case $state in
      speak) echo "listen stop" ;;
      think) echo "listen drop" ;;
      *) echo "listen take" ;;
    esac
    ;;
  pause)
    case $state in
      listen) echo "listen wait" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  end)
    case $state in
      listen) echo "think answer" ;;
      *) echo "$state keep" ;;
    esac
    ;;
  cough|backchannel|echo)
    echo "$state ignore"
    ;;
  tool)
    echo "$state aside"
    ;;
  *)
    echo "unknown event" >&2
    exit 2
    ;;
esac
