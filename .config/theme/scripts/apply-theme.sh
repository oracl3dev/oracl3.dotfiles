#!/bin/bash
# ~/.config/theme/scripts/apply-theme.sh

STATE_FILE="$HOME/.config/theme/.current_theme"

THEME_NAME="$1"
WALL="$2"

[ -z "$WALL" ] && exit 1

pgrep awww-daemon >/dev/null || awww-daemon &

awww img "$WALL" --resize=crop --transition-type wipe --transition-duration 3

wal -i "$WALL" 
kill -SIGUSR1 $(pgrep kitty)

hyprctl reload

echo "$THEME_NAME|$WALL" > "$STATE_FILE"