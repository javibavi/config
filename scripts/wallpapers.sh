
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

# Get the current background
CURRENT_BACKGROUND=$(swww query | grep 'image:' | sed 's/.*image: //')

# Find the index of the current background in the list
CURRENT_INDEX=-1
for i in "${!BACKGROUND_FILES[@]}"; do
    if [[ "${BACKGROUND_FILES[i]}" == *"$CURRENT_BACKGROUND"* ]]; then
        CURRENT_INDEX=$i
        break
    fi
done

# Determine the next background's index (cycle back to the start if at the end)
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#BACKGROUND_FILES[@]} ))

# Set the next background
swww img "${BACKGROUND_FILES[NEXT_INDEX]}" --transition-type wipe --transition-duration 4

~/.config/scripts/hyprsync.sh
~/.config/scripts/launchersync.sh
~/.config/scripts/powersync.sh
