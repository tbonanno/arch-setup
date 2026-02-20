#! /usr/bin/bash

cat packages.txt | sudo pacman -S --needed -

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -rf yay

sudo systemctl enable firewalld.service
sudo systemctl enable ly@tty2.service
sudo systemctl disable getty@tty2.service

echo "Done! Check for warnings and errors, then reboot."
