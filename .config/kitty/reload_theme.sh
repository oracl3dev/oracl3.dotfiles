#!/usr/bin/env bash
# Update wal colors for all open Kitty windows

# Path to wal Kitty color file
WAL_KITTY="$HOME/.cache/wal/colors-kitty.conf"

# Get all kitty windows
kitty @ ls | jq -r '.[].id' | while read -r window; do
    # Send command to each window to reload wal colors
    kitty @ --to "$window" set-colors --all "$WAL_KITTY"
done
