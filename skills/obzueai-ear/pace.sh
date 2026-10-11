#!/bin/sh
# Usage: pace.sh <state> <event>
# For a slower turn. A long quiet is still not her turn.
# Events: speech pause long-pause again end cough backchannel echo tool
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
  pause|long-pause)
    echo "listen stay"
    ;;
  again)
    echo "speak repeat"
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
