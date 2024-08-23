echo "Fonts..."
sleep 3
sudo pacman -S --noconfirm --disable-download-timeout ttf-dejavu ttf-dejavu-nerd ttf-joypixels ttf-hanazono

echo "Browser..."
sleep 3
yay -S --noconfirm --disable-download-timeout google-chrome-dev

echo "Other..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout  zip unzip wget fastfetch htop linux-headers linux-docs meson ninja 
echo "Done."
