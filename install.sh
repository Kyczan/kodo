#!/bin/bash

# create dir for screenshots
mkdir $HOME/Pictures/screenshots

# copy wallpaper
cp ./scrots/wallpapers/wallpaper.png $HOME/Pictures/

# install lot of apps
sudo pacman -S --needed --noconfirm curl gvim rofi i3blocks feh lxappearance pulseaudio playerctl compton acpi scrot numlockx vivaldi bat exa sysstat dunst youtube-dl nodejs xclip libqalculate surf stow

# backup before stow
mkdir -p $HOME/.stow-backup
# TODO
# how to do this smart?

# stow'em all
stow --target=$HOME bash
stow --target=$HOME bin
stow --target=$HOME dunst
stow --target=$HOME vim
stow --target=$HOME x

# install yay
cd $HOME
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -rf yay

# install AUR packages
yay -S i3lock-color-git system-san-francisco-font-git ttf-ms-fonts ttf-font-awesome-4 paper-gtk-theme-git paper-icon-theme-git imagemagick xss-lock-git vscodium vivaldi-widevine vivaldi-ffmpeg-codecs icons-in-terminal

# reload bash
source $HOME/.bash_profile
source $HOME/.bashrc

echo "Done-Press enter"
read
