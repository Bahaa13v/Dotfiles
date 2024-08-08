#!/bin/bash

sudo pacman -S --needed --noconfirm --disable-download-timeout sddm sway
sudo systemctl enable sddm
sudo pacman -S --needed --noconfirm --disable-download-timeout swaybg waybar alacritty wofi neofetch awesome-terminal-fonts ttf-font-awesome ttf-hack-nerd

mkdir /home/bahaa/.config

cp -r alacritty /home/bahaa/.config/
cp -r sway /home/bahaa/.config/
cp -r neofetch /home/bahaa/.config/
cp -r waybar /home/bahaa/.config/
cp -r wofi /home/bahaa/.config/

cp -r walls /home/bahaa/


echo "Setting up Zsh..."
sudo pacman -S --needed --noconfirm --disable-download-timeout bash-preexec grml-zsh-config powerline python-click-completion zsh zsh-autosuggestions zsh-completions zsh-doc zsh-history-substring-search zsh-lovers zsh-syntax-highlighting zshdb

sudo usermod -s /bin/zsh bahaa
echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /home/bahaa/.zshrc
echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> /home/bahaa/.zshrc
echo "source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh" >> /home/bahaa/.zshrc


sudo pacman -S --needed --noconfirm --disable-download-timeout go base-devel


cd ..
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
cd ../Dotfiles


yay -S --noconfirm --disable-download-timeout ttf-geist ttf-geist-mono

chmod +x Extra.sh
echo "Runing Extra.... you can cancel"
sleep 5
./Extra.sh
