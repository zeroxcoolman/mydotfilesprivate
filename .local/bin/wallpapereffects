#!/usr/bin/env bash
# Wallpaper Effects using ImageMagick with matugen

# Variables
wallpaper_current="$HOME/.config/hypr/current_wallpaper"
wallpaper_modified="$HOME/.config/hypr/wallpaper_effects/wallpaper_modified.png"
rofi_theme="$HOME/.config/rofi/config-wallpaper-effects.rasi"

# Create wallpaper_effects directory if it doesn't exist
mkdir -p "$HOME/.config/hypr/wallpaper_effects"

# Create wallpaper_modified if it doesn't exist (copy from current)
if [ ! -f "$wallpaper_modified" ]; then
    cp "$(readlink -f "$wallpaper_current")" "$wallpaper_modified"
fi

# Define ImageMagick effects
declare -A effects=(
    ["No Effects"]="no-effects"
    ["Black & White"]="magick \"$wallpaper_current\" -colorspace gray -sigmoidal-contrast 10,40% \"$wallpaper_modified\""
    ["Blurred"]="magick \"$wallpaper_current\" -blur 0x5 \"$wallpaper_modified\""
    ["Charcoal"]="magick \"$wallpaper_current\" -charcoal 0x5 \"$wallpaper_modified\""
    ["Edge Detect"]="magick \"$wallpaper_current\" -edge 1 \"$wallpaper_modified\""
    ["Emboss"]="magick \"$wallpaper_current\" -emboss 0x5 \"$wallpaper_modified\""
    ["Frame Raised"]="magick \"$wallpaper_current\" +raise 150 \"$wallpaper_modified\""
    ["Frame Sunk"]="magick \"$wallpaper_current\" -raise 150 \"$wallpaper_modified\""
    ["Negate"]="magick \"$wallpaper_current\" -negate \"$wallpaper_modified\""
    ["Oil Paint"]="magick \"$wallpaper_current\" -paint 4 \"$wallpaper_modified\""
    ["Posterize"]="magick \"$wallpaper_current\" -posterize 4 \"$wallpaper_modified\""
    ["Polaroid"]="magick \"$wallpaper_current\" -polaroid 0 \"$wallpaper_modified\""
    ["Sepia Tone"]="magick \"$wallpaper_current\" -sepia-tone 65% \"$wallpaper_modified\""
    ["Solarize"]="magick \"$wallpaper_current\" -solarize 80% \"$wallpaper_modified\""
    ["Sharpen"]="magick \"$wallpaper_current\" -sharpen 0x5 \"$wallpaper_modified\""
    ["Vignette"]="magick \"$wallpaper_current\" -vignette 0x3 \"$wallpaper_modified\""
    ["Vignette-black"]="magick \"$wallpaper_current\" -background black -vignette 0x3 \"$wallpaper_modified\""
    ["Zoomed"]="magick \"$wallpaper_current\" -gravity Center -extent 1:1 \"$wallpaper_modified\""
)

# Function to apply no effects
no-effects() {
    # Copy original to modified location
    cp "$(readlink -f "$wallpaper_current")" "$wallpaper_modified"
    
    # Update symlink to point to wallpaper_modified
    ln -sf "$wallpaper_modified" "$wallpaper_current"
    
    # Run matugen
    matugen image "$wallpaper_current"
}

# Main function
main() {
    # Populate rofi menu options
    options=("No Effects")
    for effect in "${!effects[@]}"; do
        [[ "$effect" != "No Effects" ]] && options+=("$effect")
    done

    choice=$(printf "%s\n" "${options[@]}" | LC_COLLATE=C sort | rofi -dmenu -i -config "$rofi_theme")

    # Process user choice
    if [[ -n "$choice" ]]; then
        if [[ "$choice" == "No Effects" ]]; then
            no-effects
        elif [[ "${effects[$choice]+exists}" ]]; then
            # Apply ImageMagick effect
            eval "${effects[$choice]}"
            
            # Update symlink to point to wallpaper_modified
            ln -sf "$wallpaper_modified" "$wallpaper_current"
            
            # Run matugen
            matugen image "$wallpaper_current"
        fi
    fi
}

# Kill rofi if already running
if pidof rofi > /dev/null; then
    pkill rofi
fi

main
