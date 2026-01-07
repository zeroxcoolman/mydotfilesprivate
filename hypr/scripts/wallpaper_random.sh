#!/usr/bin/env bash

symlink_path="$HOME/.config/hypr/current_wallpaper"
wallpapers_dir="$HOME/Pictures/wallpapers"

random_wallpaper=$(find "$wallpapers_dir" -maxdepth 1 -type f | shuf -n 1)

## set wallpaper

matugen image $random_wallpaper

## create symlink
mkdir -p "$(dirname "$symlink_path")"
ln -sf "$random_wallpaper" "$symlink_path"
