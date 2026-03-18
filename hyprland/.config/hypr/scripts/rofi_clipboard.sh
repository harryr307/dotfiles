#!/bin/bash

cliphist list | rofi -dmenu -p "clipboard" | xargs -0 -I {} cliphist decode {} | wl-copy
