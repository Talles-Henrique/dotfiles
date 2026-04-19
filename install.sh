#!/bin/bash

echo "Installing dotfiles..."

ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/picom ~/.config/picom
ln -sf ~/dotfiles/alacritty ~/.config/alacritty

ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

echo "Done."
