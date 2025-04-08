#!/bin/sh

choice=$(echo -e "Copy\nDelete\nClear" |
    rofi -dmenu -theme ~/.config/rofi/launchers/type-1/cliphist-launcher.rasi \
        -p "Clipboard Action")

if [ -n "$choice" ]; then
    case "$choice" in
        "Copy")
            cliphist list | rofi -dmenu \
                -theme ~/.config/rofi/launchers/type-1/style-8.rasi \
                -p "Clipboard Action: 📋 Select to Copy" | cliphist decode | wl-copy
            ;;
        "Delete")
            cliphist list | rofi -dmenu \
                -theme ~/.config/rofi/launchers/type-1/style-8.rasi \
                -p "Clipboard Action: ❌ Select to Delete" | cliphist delete
            ;;

        "Clear")
            confirm=$(echo -e "Clear\nCancel" |
                rofi -dmenu \
                    -p "Clear Everthing?" \
                    -theme ~/.config/rofi/launchers/type-1/cliphist-launcher.rasi)

            if [ "$confirm" = "Clear" ]; then
                cliphist wipe
            fi
            ;;
    esac
fi
