#!/bin/bash

# Configurable thresholds
LOW_BATTERY=25        # battery percentage threshold
FULL_BATTERY=90       # battery full-ish threshold
DIM_LEVEL="10%"       # dim brightness to this level
DIM_DURATION=3        # seconds before restoring brightness

# Get battery info
battery_level=$(cat /sys/class/power_supply/BAT*/capacity)
status=$(cat /sys/class/power_supply/BAT*/status)

# If battery is low and discharging
if [ "$battery_level" -le "$LOW_BATTERY" ] && [ "$status" = "Discharging" ]; then
    current_brightness=$(brightnessctl get)

    # Dim the screen
    brightnessctl set "$DIM_LEVEL"

    # Notify and restore brightness
    notify-send -u critical "Battery Low" "Please charge your device 🔋"
    sleep "$DIM_DURATION"
    brightnessctl set "$current_brightness"

# If battery is full-ish and charging
elif [ "$battery_level" -ge "$FULL_BATTERY" ] && [ "$status" = "Charging" ]; then
    notify-send -u normal "Battery Charged at ${battery_level}%" "Consider unplugging 🔌"
fi
