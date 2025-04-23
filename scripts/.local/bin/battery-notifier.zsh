#!/bin/zsh

battery_path="/sys/class/power_supply/BAT1" # Change to BAT0 if doesnt work
battery_level=$(<"$battery_path/capacity")
battery_status=$(<"$battery_path/status")  # "Discharging", "Charging", etc.
brightness_level=$(brightnessctl get)

if [[ "$battery_status" == "Discharging" ]]; then
    if (( battery_level <= 15 )); then
        brightnessctl set 10%
        notify-send --urgency=critical "Critical Battery" "\nBattery level is at ${battery_level}%!" -t 15000
        sleep 5
        brightnessctl set $brightness_level
    elif (( battery_level <= 30 )); then
        notify-send --urgency=normal --category=225w "🔋 Low Battery" "Battery level is at ${battery_level}%." -t 15000
    fi
elif [[ "$battery_status" == "Charging" ]]; then
    if (( battery_level >= 90 )); then
        notify-send --urgency=normal --category=275w "Battery level is at ${battery_level}%" "Consider unplugging the charger." -t 15000
    fi
fi
