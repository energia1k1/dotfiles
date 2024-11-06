#!/bin/bash

ln -sf .dotfiles/bashrc         ~/.bashrc        
ln -sf .dotfiles/bash_profile   ~/.bash_profile
ln -sf .dotfiles/dunst          ~/.dunst
ln -sf .dotfiles/gitconfig      ~/.gitconfig
ln -sf .dotfiles/emacs          ~/.emacs         
ln -sf .dotfiles/i3             ~/.i3      
ln -sf .dotfiles/i3status       ~/.i3status 
ln -sf .dotfiles/xinitrc        ~/.xinitrc       
ln -sf .dotfiles/Xresources     ~/.Xresources

mkdir -p ~/bin
ln -sf ../.dotfiles/the_i3status ~/bin/the_i3status
