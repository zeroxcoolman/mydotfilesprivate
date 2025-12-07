#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */

# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="Keybind Hints" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"ESC" "Close this app" "" \
"SUPER" "Main Modifier (Windows Key)" "(SUPER KEY)" \
"SUPER + Return" "Open Terminal" "(exec \$terminal)" \
"SUPER + SHIFT + Return" "DropDown Terminal" "(dropterminal.sh)" \
"SUPER + Q" "Close active window" "(killactive)" \
"SUPER + SHIFT + Q" "Kill active process" "(KillActiveProcess.sh)" \
"CTRL + ALT + Delete" "Exit Hyprland" "(hyprctl dispatch exit 0)" \
"SUPER + E" "Open File Manager" "(\$fileManager)" \
"SUPER + Space" "Toggle Floating" "(togglefloating)" \
"SUPER + R" "Open Menu" "(\$menu)" \
"SUPER + P" "Toggle Dwindle" "(pseudo)" \
"SUPER + J" "Toggle Split" "(togglesplit)" \
"SUPER + D" "Launch NWG Dock" "(nwg-dock-hyprland)" \
"SUPER + B" "Open Browser" "(chromium)" \
"SUPER + L" "Lock Screen" "(hyprlock.sh)" \
"SUPER + SHIFT + F" "Fullscreen" "(fullscreen)" \
"SUPER + SHIFT + S" "Screenshot" "(screenshot.sh)" \
"SUPER + W" "Change Wallpaper" "(wppicker.sh)" \
"SUPER + C" "Color Picker" "(hyprpicker -a)" \
"SUPER + CTRL + B" "Waybar Styles" "(WaybarStyles.sh)" \
"SUPER + ALT + B" "Waybar Layout" "(WaybarLayout.sh)" \
"SUPER + H" "Hide Waybar" "(pkill -SIGUSR1 waybar)" \
"SUPER + SHIFT + E" "Yazi File Manager" "(kitty yazi)" \
"SUPER + K" "Show Keybinds" "(keybinds.sh)" \
"SUPER + SHIFT + D" "Dropdown Terminal" "(dropterminal.sh)" \
"SUPER + SHIFT + ." "Emoji Picker" "(rofi -show emoji)" \
"SUPER + Arrow Left" "Move Focus Left" "(movefocus l)" \
"SUPER + Arrow Right" "Move Focus Right" "(movefocus r)" \
"SUPER + Arrow Up" "Move Focus Up" "(movefocus u)" \
"SUPER + Arrow Down" "Move Focus Down" "(movefocus d)" \
"SUPER + CTRL + Arrow Left" "Move Window Left" "(movewindow l)" \
"SUPER + CTRL + Arrow Right" "Move Window Right" "(movewindow r)" \
"SUPER + CTRL + Arrow Up" "Move Window Up" "(movewindow u)" \
"SUPER + CTRL + Arrow Down" "Move Window Down" "(movewindow d)" \
"SUPER + SHIFT + Arrow Left" "Resize Window Left" "(resizeactive -50 0)" \
"SUPER + SHIFT + Arrow Right" "Resize Window Right" "(resizeactive 50 0)" \
"SUPER + SHIFT + Arrow Up" "Resize Window Up" "(resizeactive 0 -50)" \
"SUPER + SHIFT + Arrow Down" "Resize Window Down" "(resizeactive 0 50)" \
"SUPER + 1-0" "Switch to Workspace 1-10" "(workspace #)" \
"SUPER + SHIFT + 1-0" "Move Window to Workspace 1-10" "(movetoworkspace #)" \
"SUPER + Mouse Down" "Zoom (UP)" "(zoom.sh decrease STEP)" \
"SUPER + Mouse Up" "Zoom (DOWN)" "(zoom.sh increase STEP)" \
"SUPER + ALT  + 0" "Zoom (RESET)" "(zoom.sh reset)" \
"SUPER + LMB Drag" "Move Window" "(movewindow)" \
"SUPER + RMB Drag" "Resize Window" "(resizewindow)" \
"XF86AudioRaiseVolume" "Increase Volume" "(volume.sh --inc)" \
"XF86AudioLowerVolume" "Decrease Volume" "(volume.sh --dec)" \
"XF86AudioMute" "Mute/Unmute Volume" "(volume.sh --toggle)" \
"XF86AudioMicMute" "Toggle Mic" "(wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle)" \
"XF86MonBrightnessUp" "Increase Brightness" "(brightness.sh --inc)" \
"XF86MonBrightnessDown" "Decrease Brightness" "(brightness.sh --dec)" \
"XF86AudioNext" "Next Track" "(playerctl next)" \
"XF86AudioPause" "Play/Pause" "(playerctl play-pause)" \
"XF86AudioPlay" "Play/Pause" "(playerctl play-pause)" \
"XF86AudioPrev" "Previous Track" "(playerctl previous)" \
"" "" "" \
