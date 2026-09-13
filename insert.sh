#!/bin/bash

# Inserts a Nerd Font icon glyph into the focused application, mirroring
# omarchy-menu-emoji-insert's clipboard-then-paste approach.

icon="${1:-}"
copy_pid=""

[[ -n $icon ]] || exit

printf '%s' "$icon" | wl-copy --type text/plain --sensitive --foreground &
copy_pid=$!

sleep 0.15
wtype -M shift -k Insert -m shift 2>/dev/null || true
sleep 0.2

kill "$copy_pid" 2>/dev/null || true
