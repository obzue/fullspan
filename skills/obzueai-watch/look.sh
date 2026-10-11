#!/bin/sh
# Read the audit. Exit 0 when every decision is allow. Exit 1 on any deny.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
AUDIT="$ROOT/memory/audit.log"
denies=0
while read -r line; do
  case $line in
    \#*|"") continue ;;
  esac
  case $line in
    *"| deny |"*)
      denies=$((denies + 1))
      echo "hold $line"
      ;;
  esac
done < "$AUDIT"
if [ "$denies" -eq 0 ]; then
  echo "clear"
  exit 0
fi
echo "hold count $denies"
exit 1
