#!/bin/zsh
state=$(fcitx5-remote)
# Debug output (optional): echo "Raw state: $state"

if [ "$state" -eq 2 ]; then
    echo "日本語入力"
else
    echo "ENG(US)"
fi
