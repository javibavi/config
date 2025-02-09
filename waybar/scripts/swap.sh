#!/bin/bash

# Set the path to the config and style files
config_file="${HOME}/.config/waybar/config.jsonc"
config_alt="${HOME}/.config/waybar/config-alt.jsonc"

# Swap names of config files
mv "${config_file}" "${config_file}.temp"
mv "${config_alt}" "${config_file}"
mv "${config_file}.temp" "${config_alt}"

echo "File names swapped successfully!"

pkill waybar
pkill cava
waybar -c ~/.config/waybar/config.jsonc &

# Check if HDMI-A-1 is connected
if swaymsg -t get_outputs | grep -q '"name": "HDMI-A-1"'; then
    # Start Waybar for the secondary monitor (HDMI-A-1)
    waybar -c ~/.config/waybar/second-monitor.jsonc -s ~/.config/waybar/second-style.css &
fi
