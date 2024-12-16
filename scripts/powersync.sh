
#!/bin/bash

# Path to your hyprlock config file
POWERMENU_CONFIG="$HOME/.config/rofi/powermenu/type-6/style-1.rasi"

# Query the current wallpaper from swww and extract the file path
CURRENT_WALLPAPER=$(swww query | grep -oP '(?<=currently displaying: image: ).*')

# Check if a valid wallpaper path was extracted
if [[ -n "$CURRENT_WALLPAPER" ]]; then
    # Update the background path in the rofi config
    sed -i "s|url(\".*\", height)|url(\"$CURRENT_WALLPAPER\", height)|" "$POWERMENU_CONFIG"
    echo "Powermenu background updated to: $CURRENT_WALLPAPER"
else
    echo "Failed to extract the current wallpaper path from swww query."
    exit 1
fi

