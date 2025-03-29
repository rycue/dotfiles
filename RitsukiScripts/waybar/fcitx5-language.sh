#!/bin/bash
state=$(fcitx5-remote)
# Debug output (optional): echo "Raw state: $state"

if [ "$state" -eq 2 ]; then
    echo "ENG"   # Custom label for Japanese input
else
    echo "JPN"   # Custom label for English input
fi

