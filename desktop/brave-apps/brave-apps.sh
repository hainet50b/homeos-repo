#!/usr/bin/env bash
set -e

cat "$HOME/.local/share/applications"/brave-* \
  | sed -n 's/.*Name=\([^\n]*\).*/\1/p' \
  > ./brave-apps.txt

