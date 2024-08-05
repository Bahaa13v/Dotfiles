#!/bin/bash

cd Dotfiles
rm README.md && mv packages.txt ~/
mkdir ~/.config
cp -r * ~/.config/
echo "Done... you may want to reboot"
