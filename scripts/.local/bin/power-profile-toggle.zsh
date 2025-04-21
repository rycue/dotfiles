#!/bin/zsh
current=$(powerprofilesctl get)

if [[ "$current" == "performance" ]]; then
    powerprofilesctl set power-saver
    notify-send --category=250w "Power Profile" "Switched to Power Saver " -t 3000
else
    powerprofilesctl set performance
    notify-send --category=250w "Power Profile" "Switched to Performance " -t 3000
fi
