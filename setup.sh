#!/bin/zsh
chsh -s $(which zsh)
rm -rf ~/.config/nvim; cp -R nvim ~/.config/nvim/
cp ./zsh/zshrc ~/.zshrc
cp ./tmux/tmux.conf ~/.tmux.conf
