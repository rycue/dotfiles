#!/bin/sh

# choice=$(echo -e "Copy\nDelete" | \
#     rofi -dmenu -theme ~/.config/rofi/launchers/type-1/cliphist-launcher.rasi \
#     -p "Clipboard Action")
choice=$(echo -e "Copy\nDelete\nClear" |
    rofi -dmenu -theme ~/.config/rofi/launchers/type-1/cliphist-launcher.rasi \
        -p "Clipboard Action" -mesg "📋 CLIPBOARD ACTION:")

if [ -n "$choice" ]; then
    case "$choice" in
        "Copy")
            cliphist list | rofi -dmenu -theme ~/.config/rofi/launchers/type-1/style-8.rasi | cliphist decode | wl-copy
            ;;
        "Delete")
            cliphist list | rofi -dmenu -theme ~/.config/rofi/launchers/type-1/style-8.rasi | cliphist delete
            ;;
        "Clear")
            confirm=$(echo -e "Clear\nCancel" |
                rofi -dmenu \
                    -mesg "ACTION: 🗑 Clear all?" \
                    -theme ~/.config/rofi/launchers/type-1/cliphist-launcher.rasi)

            if [ "$confirm" = "Clear" ]; then
                cliphist wipe
            fi
            ;;
    esac
fi
