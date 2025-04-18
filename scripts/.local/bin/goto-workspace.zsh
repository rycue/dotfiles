#!/bin/zsh

# Dependencies check
required_cmds=(jq hyprctl notify-send paplay)
for cmd in "${required_cmds[@]}"; do
  if ! command -v "$cmd" >/dev/null; then
    notify-send "❌ Missing dependency:" "$cmd"
    echo "❌ Missing dependency: $cmd"
    exit 1
  fi
done

# Takes a workspace number as the first argument
target_ws=$1

# Get current workspace
current_ws=$(hyprctl activeworkspace -j | jq -r '.name')

# Check if Waybar is running
if pgrep -x "waybar" >/dev/null; then
  show_notification=false
else
  show_notification=true
fi

# Switch only if not already there
if [[ "$current_ws" == "$target_ws" ]]; then
  if $show_notification; then
  notify-send --urgency=low --category=250w "Workspace $target_ws" "You're already here 👀"
  paplay /usr/share/sounds/freedesktop/stereo/dialog-error.oga 2>/dev/null
  fi
else
  hyprctl dispatch workspace "$target_ws"
  sleep 0.05
  if $show_notification; then
    notify-send --urgency=normal --category=250w "Workspace $target_ws" "Switched from workspace $current_ws." -t 750
  fi
fi