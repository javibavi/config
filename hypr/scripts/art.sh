#!/usr/bin/env bash

# Ensure cache directory exists
mkdir -p /home/javi_bavi/.cache/albumart

# Get metadata safely
url=$(playerctl metadata mpris:artUrl 2>/dev/null)
artist=$(playerctl metadata xesam:artist 2>/dev/null)
album=$(playerctl metadata xesam:album 2>/dev/null)

# Exit if no player is found or no metadata
if [ -z "$url" ] || [ "$url" == "No player found" ]; then
    exit 1
fi

# Create safe filename by replacing spaces and special characters
metadata=$(printf "%s - %s" "$artist" "$album" | sed 's/[^a-zA-Z0-9._-]/_/g')
output_path="/home/javi_bavi/.cache/albumart/${metadata}.png"

# Check if image already exists
if [ -f "$output_path" ]; then
    echo "$output_path"
    exit 0
fi

# Download and convert image
if curl -s "$url" -o "/home/javi_bavi/.cache/albumart/${metadata}" && \
   magick "/home/javi_bavi/.cache/albumart/${metadata}" "$output_path"; then
    rm "/home/javi_bavi/.cache/albumart/${metadata}"
    echo "$output_path"
else
    exit 1
fi
