#!/bin/zsh
current=$(powerprofilesctl get)

if [[ "$current" == "performance" ]]; then
    echo " 高性能"
elif [[ "$current" == "power-saver" ]]; then
    echo "  省電"
else
    # fallback in case something sets it to balanced
    echo ""
fi
