#!/bin/bash

mkdir -p /home/bahaa/.config

sudo pacman -S --needed --noconfirm --disable-download-timeout sway
cp -r sway /home/bahaa/.config/


sudo pacman -S --needed --noconfirm --disable-download-timeout alacritty wofi neofetch
cp -r alacritty /home/bahaa/.config/
cp -r neofetch /home/bahaa/.config/
cp -r wofi /home/bahaa/.config/

sudo pacman -S --needed --noconfirm --disable-download-timeout waybar awesome-terminal-fonts ttf-font-awesome ttf-hack-nerd
cp -r waybar /home/bahaa/.config/


sudo pacman -S --needed --noconfirm --disable-download-timeout swaybg
cp -r walls /home/bahaa/

sudo pacman -S --needed --noconfirm --disable-download-timeout sddm

echo "Setting up Zsh..."
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout bash-preexec grml-zsh-config powerline python-click-completion zsh zsh-autosuggestions zsh-completions zsh-doc zsh-history-substring-search zsh-lovers zsh-syntax-highlighting zshdb
sudo usermod -s /bin/zsh bahaa
echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /home/bahaa/.zshrc
echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> /home/bahaa/.zshrc
echo "source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh" >> /home/bahaa/.zshrc

echo "Setting up yay"
sleep 3
sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel
sudo pacman -S --needed --noconfirm --disable-download-timeout go
cd ..
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
cd ../Dotfiles

yay -S --noconfirm --disable-download-timeout ttf-geist ttf-geist-mono

sudo pacman -S --noconfirm --disable-download-timeout intel-ucode xorg xorg-drivers pulseaudio pavucontrol

chmod +x Extra.sh
echo "Runing Extra.... you can cancel"
sleep 5
./Extra.sh
