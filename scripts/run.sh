#!/bin/bash

# Print Screen Logo
print_logo() {
  cat <<"EOF"
    _             _            ____  _  ______        ___           _        _ _              _     
   / \   _ __ ___| |__        |  _ \| |/ / ___|      |_ _|_ __  ___| |_ __ _| | |         ___| |__  
  / _ \ | '__/ __| '_ \       | |_) | ' / |  _        | || '_ \/ __| __/ _` | | |        / __| '_ \ 
 / ___ \| | | (__| | | |      |  __/| . \ |_| |       | || | | \__ \ || (_| | | |       _\__ \ | | |
/_/   \_\_|  \___|_| |_|      |_|   |_|\_\____|      |___|_| |_|___/\__\__,_|_|_|      (_)___/_| |_|

EOF
}

# Clear Screen Logo
clear
print_logo

# Screen delay
sleep 1

# Insalling my packages
packages=(
# System
  eza
  btop
  starship
  fzf
  dnsutils
  yazi
  duf
  bat
  pfetch

# Hyprland
  waybar
  hyprpaper
  hyprlock
  hyprshot
  hypridle
  hyprpicker
  swaync

# Fonts
  ttf-sourcecodepro-nerd
  ttf-font-awesome

# Media
  spotify
  pavucontrol
 
# Misc
  nwg-look
  tokyonight-gtk-theme-git
)

for package in ${packages[@]}; do
  paru -S --noconfirm ${package}
done

# Screen delay
sleep 1

# Check SYU for updates and if so do upgrade
sudo pacman -Syu --noconfirm

# Checks AUR for updates and if so do upgrade
paru

# Screen delay
sleep 1

# Print Screen Logo
print_logo() {
  cat <<"EOF"
  
    _             _            ____  _  ______        ___           _        _ _              _            ____                   
   / \   _ __ ___| |__        |  _ \| |/ / ___|      |_ _|_ __  ___| |_ __ _| | |         ___| |__        |  _ \  ___  _ __   ___ 
  / _ \ | '__/ __| '_ \       | |_) | ' / |  _        | || '_ \/ __| __/ _` | | |        / __| '_ \       | | | |/ _ \| '_ \ / _ \
 / ___ \| | | (__| | | |      |  __/| . \ |_| |       | || | | \__ \ || (_| | | |       _\__ \ | | |      | |_| | (_) | | | |  __/
/_/   \_\_|  \___|_| |_|      |_|   |_|\_\____|      |___|_| |_|___/\__\__,_|_|_|      (_)___/_| |_|      |____/ \___/|_| |_|\___|

EOF
}

# Clear Screen Logo
clear
print_logo
