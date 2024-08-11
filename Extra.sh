echo "Basic Needes..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout ttf-dejavu ttf-joypixels pulseaudio pavucontrol dolphin

echo "Browser..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout chromium xorg xorg-server xorg-xinit xorg-drivers

echo "Other..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout ttf-sazanami zip unzip wget fastfetch htop linux-headers linux-docs meson ninja

echo "Done."
