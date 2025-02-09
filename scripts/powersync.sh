#!/bin/bash
# Path to your hyprlock config file
POWERMENU_CONFIG="$HOME/.config/rofi/powermenu/type-6/style-1.rasi"

# Query the current wallpaper from swww and extract the file path
CURRENT_WALLPAPER=$(swww query | grep -m1 'image:' | awk -F': ' '{print $NF}' | tr -d '\r')

# Check if a valid wallpaper path was extracted
if [[ -n "$CURRENT_WALLPAPER" ]]; then
    # Add debug output
    echo "Current config contents:"
    grep -A 2 "background-image:" "$POWERMENU_CONFIG"
    
    # Update the background path in the rofi config with more precise pattern matching
    sed -i "s|background-image:.*url(\".*\"|background-image: url(\"$CURRENT_WALLPAPER\"|" "$POWERMENU_CONFIG"
    
    echo "Powermenu background updated to: $CURRENT_WALLPAPER"
    
    # Verify the change
    echo "New config contents:"
    grep -A 2 "background-image:" "$POWERMENU_CONFIG"
else
    echo "Failed to extract the current wallpaper path from swww query."
    exit 1
fi

