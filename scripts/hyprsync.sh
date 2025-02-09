#!/bin/bash
# Path to your hyprlock config file
HYPRLOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"

# Query the current wallpaper from swww and extract the file path - updated for multi-monitor
CURRENT_WALLPAPER=$(swww query | grep -m1 'image:' | awk -F': ' '{print $NF}' | tr -d '\r')

# Check if a valid wallpaper path was extracted
if [[ -n "$CURRENT_WALLPAPER" ]]; then
    # Update the background path in the hyprlock config
    sed -i '/^background {/,/^}/ s|path = .*|path = '"$CURRENT_WALLPAPER"'|' "$HYPRLOCK_CONFIG"
    echo "Hyprlock background updated to: $CURRENT_WALLPAPER"
else
    echo "Failed to extract the current wallpaper path from swww query."
    exit 1
fi
