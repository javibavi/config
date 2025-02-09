#!/bin/bash

# Kill existing Waybar instances
pkill waybar
pkill cava

# Start Waybar for the main monitor (eDP-1)
waybar &

# Check if HDMI-A-1 is connected
if swaymsg -t get_outputs | grep -q '"name": "HDMI-A-1"'; then
    # Start Waybar for the secondary monitor (HDMI-A-1)
    waybar -c ~/.config/waybar/second-monitor.jsonc -s ~/.config/waybar/second-style.css &
fi
