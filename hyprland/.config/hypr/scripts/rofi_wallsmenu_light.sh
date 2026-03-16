#!/bin/bash

chosen=$(ls ~/Pictures/wallpapers | rofi -dmenu -p "Choose a wallpaper" -i)

~/.config/hypr/scripts/chbg.sh -l ~/Pictures/wallpapers/$chosen

# set gtk to light theme (Yaru-sage)
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-sage' 
