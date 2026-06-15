#!/bin/bash
# Generate wofi colors from pywal
# Requires pywal 3+ and wofi

# Where pywal stores colors
WAL_DIR="$HOME/.cache/wal"
BACKGROUND=$(jq -r '.special.background' $WAL_DIR/colors.json)
FOREGROUND=$(jq -r '.special.foreground' $WAL_DIR/colors.json)
ACCENT=$(jq -r '.colors[2]' $WAL_DIR/colors.json)

# Output wofi config
cat > ~/.config/wofi/config <<EOL
[wofi]
font = FiraCode Nerd Font 12
background = $BACKGROUND
foreground = $FOREGROUND
highlight-background = $ACCENT
highlight-foreground = $BACKGROUND
border = 2
border-color = $ACCENT
radius = 10
padding = 8
lines = 10
columns = 1
show-icons = true
icon-size = 32
EOL
