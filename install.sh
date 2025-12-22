#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/zeroxcoolman/mydotfilesprivate.git"
REPO_DIR="$HOME/mydotfilesprivate"

CONFIG_DIR="$HOME/.config"
PICTURES_DIR="$HOME/Pictures/wallpapers"
HYPR_KEYBINDS="$CONFIG_DIR/hypr/configs/keybinds.conf"

SDDM_THEME_DIR="/usr/share/sddm/themes"
SDDM_THEME_NAME="sddm-eucalyptus-drop"

SCREENRECORD_BIND='bind = SUPER ALT, R, exec, ~/.config/hypr/scripts/screenrecords/screenrecord.sh'

echo "==> Hyprland dotfiles installer"
echo

# -------- helpers --------
ask_yes_no() {
  while true; do
    read -rp "$1 [y/n]: " yn
    case $yn in
      [Yy]*) return 0 ;;
      [Nn]*) return 1 ;;
      *) echo "Please answer y or n." ;;
    esac
  done
}

safe_copy() {
  SRC="$1"
  DEST="$2"

  if [[ -d "$SRC" ]]; then
    mkdir -p "$DEST"
    cp -r "$SRC" "$DEST"
  fi
}

# -------- clone repo --------
if [[ ! -d "$REPO_DIR" ]]; then
  echo "==> Cloning repo..."
  git clone "$REPO_URL" "$REPO_DIR"
else
  echo "==> Repo already exists, skipping clone"
fi

cd "$REPO_DIR"

# -------- ~/.config installs --------
echo "==> Installing configs to ~/.config"

for dir in \
  btop cava fastfetch fish hypr kitty mangowc matugen \
  nvim nwg-dock-hyprland oxwm rofi satty starship \
  swaync waybar wlogout
do
  if [[ -d "$dir" ]]; then
    echo "  -> $dir"
    safe_copy "$dir" "$CONFIG_DIR/"
  fi
done

# -------- wallpapers --------
if [[ -d "wallpapers" ]]; then
  echo "==> Installing wallpapers"
  mkdir -p "$PICTURES_DIR"
  cp -r wallpapers/* "$PICTURES_DIR/"
fi

# -------- SDDM theme --------
if [[ -d "$SDDM_THEME_NAME" ]]; then
  echo "==> Installing SDDM theme (requires sudo)"
  sudo mkdir -p "$SDDM_THEME_DIR"
  sudo cp -r "$SDDM_THEME_NAME" "$SDDM_THEME_DIR/"
fi

# -------- optional: screen recording --------
if [[ -d "optional/screenrecords" ]]; then
  if ask_yes_no "Do you want to install screen recording support?"; then
    echo "==> Installing screen recording scripts"

    TARGET="$CONFIG_DIR/hypr/scripts/screenrecords"
    mkdir -p "$(dirname "$TARGET")"
    cp -r optional/screenrecords "$TARGET"
    chmod +x "$TARGET"/*.sh

    echo "==> Adding Hyprland keybind"

    mkdir -p "$(dirname "$HYPR_KEYBINDS")"
    touch "$HYPR_KEYBINDS"

    if ! grep -Fxq "$SCREENRECORD_BIND" "$HYPR_KEYBINDS"; then
      echo "" >> "$HYPR_KEYBINDS"
      echo "$SCREENRECORD_BIND" >> "$HYPR_KEYBINDS"
      echo "  -> Keybind added"
    else
      echo "  -> Keybind already exists, skipping"
    fi
  else
    echo "==> Skipping screen recording"
  fi
fi

echo
echo "✅ Installation complete!"
echo "➡ You may need to reload Hyprland (SUPER + SHIFT + R)"
