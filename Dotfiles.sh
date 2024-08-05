#!/bin/bash

rm README.md
mv packages.txt ~/
mkdir ~/.config
cp -r * ~/.config/
rm ~/.config/Dotfiles.sh
echo "Done... you may want to reboot"
