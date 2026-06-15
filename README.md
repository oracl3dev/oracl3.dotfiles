# oracl3.dotfiles

Personal dotfiles for Arch Linux + Hyprland setup.

## Stack

- **WM:** Hyprland (Wayland)
- **Bar:** Waybar + Hyaprpanel
- **Terminal:** Kitty (Alacritty preinstalled in case kitty crashes as it did when i first installed Hyprland. Mind that Konsole terminal emulator should be preinstalled)
- **Shell:** Fish + Oh My Posh
- **Launcher:** Rofi / Wofi
- **Notifications:** Dunst
- **File Manager:** Thunar / nnn
- **System Monitor:** btop / htop
- **Audio Visualizer:** Cava
- **Fetch:** Fastfetch
- **Widgets:** Eww
- **Color Scheme:** pywal

## Installation

> Tested on Arch Linux. Use at your own risk.

```bash
git clone https://github.com/oracl3dev/oracl3.dotfiles.git
cd oracl3.dotfiles
chmod +x install.sh
./install.sh
```

The script will:
- Install `yay` (AUR helper) if not present
- Install all required packages
- Symlink configs to `~/.config`
- Set Fish as the default shell

## Structure

```
.config/
├── hypr/         # Hyprland config
├── waybar/       # Waybar config
├── kitty/        # Kitty terminal
├── fish/         # Fish shell
├── rofi/         # Rofi launcher
├── dunst/        # Notifications
├── eww/          # Widgets
├── cava/         # Audio visualizer
├── btop/         # System monitor
└── ...
```

## Notes

- Configs are symlinked, not copied — changes reflect immediately
- Some packages may require manual setup (fcitx5, keyd, etc.)
