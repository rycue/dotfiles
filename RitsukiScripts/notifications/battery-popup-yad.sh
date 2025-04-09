#!/bin/bash

# Save current brightness
current_brightness=$(brightnessctl get)

# Dim the screen
brightnessctl set 10%

# Show notification using GTK theme
yad --title="Battery Warning" \
    --text="<span font='24'><b>Please charge your device 🔋</b></span>" \
    --undecorated \
    --no-buttons \
    --timeout=3 \
    --center \
    --skip-taskbar \
    --fixed \
    --width=500 \
    --height=100 \
    --text-align=center &

# Wait while the popup is visible
sleep 3

# Restore brightness
brightnessctl set "$current_brightness"
