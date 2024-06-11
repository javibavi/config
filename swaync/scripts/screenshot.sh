#!/bin/bash

# Hide the swaync menu (if swaync is installed and running)
swaync-client -t

# Capture the screenshot of the selected area
screenshot_file="$HOME/Pictures/screenshot-$(date +%Y-%m-%d-%H%M%S).png"
grim -g "$(slurp)" "$screenshot_file"

# Display the notification with the screenshot preview
notify-send --icon="$screenshot_file" "Screenshot saved to $screenshot_file"

# Copy the screenshot to the clipboard (optional)
wl-copy < "$screenshot_file"
