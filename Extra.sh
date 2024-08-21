echo "Basic Needes..."
sleep 3
sudo pacman -S --noconfirm --disable-download-timeout ttf-dejavu ttf-dejavu-nerd ttf-joypixels pulseaudio pavucontrol

echo "Browser..."
sleep 3
yay -S --noconfirm --disable-download-timeout google-chrome

echo "Other..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout ttf-hanazono zip unzip wget fastfetch htop linux-headers linux-docs meson ninja

echo "Done."
