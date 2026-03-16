#!/bin/bash

chosen=$(ls ~/Pictures/wallpapers | rofi -dmenu -p "Choose a wallpaper" -i)

if [ chosen == "" ]; then
  exit 1
fi

~/.config/hypr/scripts/chbg.sh ~/Pictures/wallpapers/$chosen

# set gtk to dark theme (Yaru-sage-dark)
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-sage-dark' 
