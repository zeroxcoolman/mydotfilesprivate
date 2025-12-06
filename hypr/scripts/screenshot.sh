#!/bin/zsh

file=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S).png

# Take screenshot of selected region and send to swappy
grim -g "$(slurp)" - | satty -f - -o "$file"

# Copy final (edited) screenshot to clipboard
wl-copy < "$file"

