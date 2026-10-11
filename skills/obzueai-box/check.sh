#!/bin/sh
# Usage: check.sh <kind> <target>
# Kinds: file-read, file-write, net, secret, process
# Allow exits 0. Deny exits 1. Both append one audit line.
set -eu
ROOT=$(CDPATH= cd -- "$(dirname "$0")/../.." && pwd)
POLICY="$ROOT/memory/box.rules"
AUDIT="$ROOT/memory/audit.log"
kind=${1:?kind}
target=${2:?target}

best=deny
best_len=-1

while read -r decision rule_kind pattern rest; do
  [ -n "${decision:-}" ] || continue
  case $decision in \#*) continue ;; esac
  [ -n "${rule_kind:-}" ] && [ -n "${pattern:-}" ] || continue
  [ "$rule_kind" = "$kind" ] || continue
  match=0
  if [ "$pattern" = "*" ]; then
    match=1
    len=0
  else
    case $target in
      "$pattern"*) match=1 ;;
    esac
    len=${#pattern}
  fi
  [ "$match" = 1 ] || continue
  if [ "$len" -gt "$best_len" ]; then
    best=$decision
    best_len=$len
  elif [ "$len" -eq "$best_len" ] && [ "$decision" = "deny" ]; then
    best=deny
  fi
done < "$POLICY"

printf '%s | %s | %s | %s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$best" "$kind" "$target" >> "$AUDIT"

if [ "$best" = "allow" ]; then
  echo "allow $kind $target"
  exit 0
fi
echo "deny $kind $target"
exit 1
