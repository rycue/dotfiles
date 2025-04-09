#!/bin/bash

# Configurable thresholds
LOW_BATTERY=20      # battery percentage threshold
DIM_LEVEL="10%"     # dim brightness to this level
DIM_DURATION=3      # seconds before restoring brightness

# Get battery info
battery_level=$(cat /sys/class/power_supply/BAT*/capacity)
status=$(cat /sys/class/power_supply/BAT*/status)

# Only trigger if battery is low and discharging
if [ "$battery_level" -le "$LOW_BATTERY" ] && [ "$status" = "Discharging" ]; then
    # Save current brightness
    current_brightness=$(brightnessctl get)

    # Dim the screen
    brightnessctl set "$DIM_LEVEL"

    # Send notification (critical priority)
    notify-send -u critical "Battery Low" "Please charge your device 🔋"

    # Wait for a few seconds (simulate notification duration)
    sleep "$DIM_DURATION"

    # Restore original brightness
    brightnessctl set "$current_brightness"
fi
