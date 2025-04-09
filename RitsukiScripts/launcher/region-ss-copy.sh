#!/bin/bash
# Simple script to capture a region instantly and copy it to the clipboard

# Set the screenshot type to 'area' (region capture)
option_type_screenshot=area

# Set the save option to 'copy' (copy to clipboard)
option_chosen=copy

# Screenshot Filename (you can customize it as needed)
NAME="screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Capture the region and copy it
grimblast --notify "$option_chosen" "$option_type_screenshot" $NAME

# You can use this to copy to clipboard after capture (if needed)
# Add any additional processing or clipboard copy method here if grimblast doesn't handle it

# Optional: Move the screenshot to a folder
screenshot_folder="$HOME/Screenshots"
if [ -f $HOME/$NAME ]; then
    if [ -d $screenshot_folder ]; then
        mv $HOME/$NAME $screenshot_folder/
    fi
fi
