#!/bin/sh
# Usage: tab.sh list | tab.sh add <name> | tab.sh join <a> <b>
# join is refused. A second tab does not share an ear.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
TABS="$ROOT/memory/tabs.md"
cmd=${1:?list, add, or join}

case $cmd in
  list)
    while read -r line; do
      case $line in \#*|"") continue ;; esac
      echo "$line"
    done < "$TABS"
    ;;
  add)
    name=${2:?name}
    case $name in
      *\|*|"") echo "bad name" >&2; exit 2 ;;
    esac
    while read -r line; do
      case $line in
        "$name |"*) echo "have $name"; exit 1 ;;
      esac
    done < "$TABS"
    printf '%s | ear off | mouth off | joined no\n' "$name" >> "$TABS"
    echo "added $name"
    ;;
  join)
    echo "deny join" >&2
    exit 1
    ;;
  *)
    echo "unknown" >&2
    exit 2
    ;;
esac
