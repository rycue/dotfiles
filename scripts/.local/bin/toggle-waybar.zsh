#!/bin/zsh

# Check if Waybar is running
if pgrep -x waybar > /dev/null; then
    pkill -x waybar
    # notify-send "Waybar toggled: OFF" -t 1000
else
    sleep 0.1
    # Double-check: if it started already somehow, skip launching again
    if ! pgrep -x waybar > /dev/null; then
        waybar & disown
    fi
fi
