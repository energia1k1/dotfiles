#!/bin/bash

xrdb -merge ~/.Xresources
setxkbmap -option "ctrl:nocaps"
emacs --daemon &
exec i3 -c ~/.i3
