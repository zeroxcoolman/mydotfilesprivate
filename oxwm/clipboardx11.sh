#!/usr/bin/env bash
# Clipboard Manager (X11)
# Uses greenclip + rofi + xclip

rofi_theme="$HOME/.config/rofi/config-clipboard.rasi"
msg='👀 note: CTRL+DEL = delete entry   ALT+DEL = wipe all'

# Kill existing rofi
pidof rofi >/dev/null && pkill rofi

while true; do
    result=$(
        rofi -i -dmenu \
            -kb-custom-1 "Control-Delete" \
            -kb-custom-2 "Alt-Delete" \
            -config "$rofi_theme" \
            -mesg "$msg" \
            < <(greenclip print)
    )

    case "$?" in
        1)
            exit
            ;;
        0)
            [ -z "$result" ] && continue
            printf '%s' "$result" | xclip -selection clipboard
            exit
            ;;
        10)
            # Delete single entry
            greenclip clear <<<"$result"
            ;;
        11)
            # Wipe all
            greenclip clear
            ;;
    esac
done
