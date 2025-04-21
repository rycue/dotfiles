#!/bin/zsh

current=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

if [ "$current" = "powersave" ]; then
    sudo cpupower frequency-set --governor performance
    notify-send --urgency=normal --category=225w "CPU Governor" "Switched to Performance"
else
    sudo cpupower frequency-set --governor powersave
    notify-send --urgency=normal --category=225w "CPU Governor" "Switched to Powersave"
fi


# THIS SCRIPT REQUIRES "SUDO", you have to do this:
# # Run visudo with an explicit editor
# sudo EDITOR=nano visudo
# # Add the line at the bottom
# <username> ALL=(ALL) NOPASSWD: /usr/bin/cpupower
# change <username? with your actual username
