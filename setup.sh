#!/bin/zsh
chsh -s $(which zsh)
rm -rf ~/.config/nvim; cp -R nvim ~/.config/
