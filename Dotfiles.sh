#!/bin/bash

sudo pacman -S --needed sddm sway swaybg waybar alacritty wofi neofetch awesome-terminal-fonts ttf-font-awesome ttf-hack-nerd

sudo systemctl enable sddm

mv packages.txt /home/bahaa/

mkdir /home/bahaa/.config

cp -r alacritty /home/bahaa/.config/
cp -r sway /home/bahaa/.config/
cp -r neofetch /home/bahaa/.config/
cp -r waybar /home/bahaa/.config/
cp -r wofi /home/bahaa/.config/

cp -r walls /home/bahaa/

sudo pacman -S --needed go ttf-dejavu pulseaudio pavucontrol dolphin ttf-joypixels ttf-sazanami unzip wget zsh chromium fastfetch base-devel htop linux-headers linux-docs meson ninja

cd ..
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
yay -S ttf-geist ttf-geist-mono
