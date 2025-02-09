#!/bin/bash
# Path to your Rofi theme configuration file
ROFI_CONFIG="$HOME/.config/rofi/launchers/type-7/style-2.rasi"

# Query the current wallpaper from swww and extract the file path
CURRENT_WALLPAPER=$(swww query | grep -m1 'image:' | awk -F': ' '{print $NF}' | tr -d '\r')

# Check if a valid wallpaper path was extracted
if [[ -n "$CURRENT_WALLPAPER" ]]; then
    # Update the background-image line in the Rofi config
    sed -i "s|background-image:.*url(\".*\", width);|background-image:            url(\"$CURRENT_WALLPAPER\", width);|" "$ROFI_CONFIG"
    echo "Rofi background updated to: $CURRENT_WALLPAPER"
else
    echo "Failed to extract the current wallpaper path from swww query."
    exit 1
fi
