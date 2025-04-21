#!/bin/zsh
current=$(powerprofilesctl get)

if [[ "$current" == "performance" ]]; then
    echo " PERF"
elif [[ "$current" == "power-saver" ]]; then
    echo "  SAV"
else
    # fallback in case something sets it to balanced
    echo ""
fi
