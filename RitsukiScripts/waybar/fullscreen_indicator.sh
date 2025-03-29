#!/bin/bash
win_info=$(hyprctl activewindow -j)
is_fullscreen=$(echo "$win_info" | jq '.fullscreen')

if [ "$is_fullscreen" -eq 1 ]; then
    # Use printf to avoid adding a newline or stray characters
    printf ' MAXIMIZED'
else
    printf ''
fi
