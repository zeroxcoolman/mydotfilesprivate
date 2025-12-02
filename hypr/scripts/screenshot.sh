#!/bin/zsh

file=~/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S).png

# Take screenshot once and save it
grim -g "$(slurp)" "$file"

# Copy that same file to clipboard
wl-copy < "$file"
