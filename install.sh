#!/bin/bash

set -e

echo "Installing yay..."
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si
    cd -
fi

echo "Installing packages..."
yay -S --needed \
    hyprland \
    waybar \
    kitty \
    alacritty \
    fish \
    rofi-wayland \
    dunst \
    btop \
    htop \
    cava \
    fastfetch \
    neofetch \
    eww \
    wofi \
    nwg-look \
    fcitx5 \
    fcitx5-configtool \
    fontconfig \
    gtk3 \
    gtk4 \
    pavucontrol \
    xsettingsd \
    oh-my-posh \
    wal \
    hyprpanel \
    nnn

echo "Linking dotfiles..."
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p ~/.config

for dir in "$DOTFILES_DIR"/.config/*/; do
    name=$(basename "$dir")
    target="$HOME/.config/$name"
    if [ -e "$target" ]; then
        echo "Skipping $name (already exists)"
    else
        ln -s "$dir" "$target"
        echo "Linked $name"
    fi
done

echo "Setting fish as default shell..."
chsh -s "$(which fish)"

echo "Done."
