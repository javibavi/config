#!/bin/bash

# Absolute paths to your background images
BACKGROUND1="/home/javi_bavi/Pictures/upscaled_background.jpg"
BACKGROUND2="/home/javi_bavi/Pictures/background.webp"

# Get the current background
CURRENT_BACKGROUND=$(swww query | grep 'image:' | sed 's/.*image: //')

# Switch backgrounds
if [[ "$CURRENT_BACKGROUND" == *"$BACKGROUND1"* ]]; then
    swww img "$BACKGROUND2" --transition-type grow --transition-duration 3
else
    swww img "$BACKGROUND1" --transition-type grow --transition-duration 3
fi
