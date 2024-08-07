#!/bin/bash
sudo pacman -S --needed waybar alacritty sway wofi neofetch
mv packages.txt /home/bahaa/
mkdir /home/bahaa/.config
cp -r alacritty /home/bahaa/.config/
cp -r sway /home/bahaa/.config/
cp -r neofetch /home/bahaa/.config/
cp -r waybar /home/bahaa/.config/
cp -r wofi /home/bahaa/.config/
cp -r walls /home/bahaa/
