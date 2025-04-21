#!/bin/bash

# Get active window info
active_window=$(hyprctl activewindow -j)

# Extract window address and floating status
window_addr=$(echo "$active_window" | jq -r '.address')
is_floating=$(echo "$active_window" | jq -r '.floating')

# Only proceed if floating
if [ "$is_floating" != "true" ]; then
    notify-send "⚠️ Not Floating" "This window must be floating to be pinned"
    exit 1
fi

# Toggle pin
hyprctl dispatch pin

# If the window is pinned after pinning, show "Pinned" notification
if [ "$(hyprctl activewindow -j | jq -r '.floating')" == "false" ]; then
    notify-send "📌 Pinned" "Floating window is now pinned on top"
else
    notify-send "📍 Unpinned" "Floating window has been unpinned"
fi
