echo "Basic Needes"

sudo pacman -S --needed --noconfirm --disable-download-timeout ttf-dejavu ttf-joypixels pulseaudio pavucontrol dolphin

echo "Zsh"

sudo pacman -S --needed --noconfirm --disable-download-timeout bash-preexec grml-zsh-config powerline python-click-completion zsh zsh-autosuggestions zsh-completions zsh-doc zsh-history-substring-search zsh-lovers zsh-syntax-highlighting zshdb

echo "Browser"

sudo pacman -S --needed --noconfirm --disable-download-timeout chromium xorg xorg-server xorg-xinit xorg-drivers

echo "Other.."

sudo pacman -S --needed --noconfirm --disable-download-timeout ttf-sazanami unzip wget fastfetch htop linux-headers linux-docs meson ninja

echo "Done"
