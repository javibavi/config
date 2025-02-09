#!/bin/bash

# Directory containing your backgrounds
BACKGROUND_DIR="/home/javi_bavi/.config/wallpapers"

# Get a sorted list of background files in the directory
BACKGROUND_FILES=($(ls -1 "$BACKGROUND_DIR"/*.{png,jpg,jpeg,webp} 2>/dev/null))

# If no files are found, exit
if [[ ${#BACKGROUND_FILES[@]} -eq 0 ]]; then
    echo "No background images found in $BACKGROUND_DIR."
    exit 1
fi

# Get all connected outputs
OUTPUTS=($(swaymsg -t get_outputs | jq -r '.[].name'))

# Get the current background - updated for multi-monitor format
# We'll take the first monitor's wallpaper as they should all be in sync
CURRENT_BACKGROUND=$(swww query | grep -m1 'image:' | awk -F': ' '{print $NF}' | tr -d '\r')

# Find the index of the current background in the list
CURRENT_INDEX=-1
for i in "${!BACKGROUND_FILES[@]}"; do
    if [[ "${BACKGROUND_FILES[i]}" == "$CURRENT_BACKGROUND" ]]; then
        CURRENT_INDEX=$i
        break
    fi
done

# If current background wasn't found, start from the beginning
if [[ $CURRENT_INDEX -eq -1 ]]; then
    CURRENT_INDEX=0
fi

# Determine the next background's index (cycle back to the start if at the end)
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#BACKGROUND_FILES[@]} ))

# Set the wallpaper for each output
for output in "${OUTPUTS[@]}"; do
    swww img "${BACKGROUND_FILES[NEXT_INDEX]}" \
        --outputs "$output" \
        --transition-type wipe \
        --transition-duration 4
done

# Run your sync scripts
~/.config/scripts/launchersync.sh
~/.config/scripts/powersync.sh
~/.config/scripts/hyprsync.sh
