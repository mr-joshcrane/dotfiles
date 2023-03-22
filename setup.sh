#!/bin/sh
sudo apt install zsh tmux -y
sudo chsh -s $(which zsh)
rm -rf ~/.config/nvim; cp -R nvim ~/.config/nvim/
cp ./zsh/.zshrc ~/.zshrc
cp ./tmux/tmux.conf ~/.tmux.conf
