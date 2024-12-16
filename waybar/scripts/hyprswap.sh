#!/bin/bash

# Set the path to the config and style files
config_file="${HOME}/.config/waybar/config-hypr.jsonc"
config_alt="${HOME}/.config/waybar/config-alt-hypr.jsonc"

# Swap names of config files
mv "${config_file}" "${config_file}.temp"
mv "${config_alt}" "${config_file}"
mv "${config_file}.temp" "${config_alt}"

echo "File names swapped successfully!"

pkill waybar
pkill cava
waybar -c ~/.config/waybar/config-hypr.jsonc &
