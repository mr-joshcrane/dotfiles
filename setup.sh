#!/bin/zsh

sudo apt-get update && sudo apt-get install tmux -y

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
cp ./nvim-linux64/bin/nvim /usr/local/bin/nvim

cp tmux/.tmux.conf ~/.tmux.conf
cp -rf ~/.config/nvim; mv nvim ~/.config/
cp zsh/.zshrc ~/.zshrc


