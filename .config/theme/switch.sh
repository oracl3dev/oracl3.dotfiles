#!/bin/bash

WALL="$1"

# Pick random wallpaper if none provided
if [ -z "$WALL" ]; then
    WALL=$(find ~/Pictures/wallpapers -type f | shuf -n 1)
fi

# Start swww daemon if not running
pgrep swww-daemon >/dev/null || swww-daemon &

# Set wallpaper
swww img "$WALL" --transition-type wipe --transition-duration 1

# Generate Pywal colors (for Kitty / Waybar / etc)
wal -i "$WALL" -q

# Reload Hyprland
hyprctl reload

# Reload Kitty colors
kill -SIGUSR1 $(pgrep kitty) 2>/dev/null


