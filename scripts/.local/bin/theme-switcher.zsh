#!/bin/zsh

# Make sure we pass a valid argument (theme name)
if [ -z "$1" ]; then
    echo "Usage: $0 [theme_name]"
    exit 1
fi

THEME_NAME=$1

# Define the theme folder path
THEME_FOLDER="$HOME/ritsuki-themes"

# Check if the theme exists
if [ ! -f "$THEME_FOLDER/$THEME_NAME/hyprland/$THEME_NAME.conf" ]; then
    echo "Theme '$THEME_NAME' not found!"
    exit 1
elif [ ! -f "$THEME_FOLDER/$THEME_NAME/waybar/style.css" ]; then
    echo "Waybar style.css for theme '$THEME_NAME' not found!"
    exit 1
fi

# Copy the theme config to the hypr config folder
cp "$THEME_FOLDER/$THEME_NAME/hyprland/$THEME_NAME.conf" "$HOME/.config/hypr/theme.conf"
cp "$THEME_FOLDER/$THEME_NAME/waybar/style.css" "$HOME/.config/waybar/style.css"

echo "Switched to theme '$THEME_NAME'"
killall waybar
sleep 0.3
nohup waybar >/dev/null 2>&1 &
notify-send --urgency=normal --category=250w "Theme Switcher" "Switched to theme '$THEME_NAME'." -t 5000
