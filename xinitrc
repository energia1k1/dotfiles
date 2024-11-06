#!/bin/bash

xrdb -merge ~/.Xresources
setxkbmap -option "ctrl:nocaps"

dunst -conf ~/.dunst &
emacs --daemon &
exec i3 -c ~/.i3
