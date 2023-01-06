#!/bin/zsh

sudo apt-get install tmux -y

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv ./nvim-linux64/bin/nvim /usr/local/bin/nvim

mv .tmux.conf ~/.tmux.conf
mv nvim ~/.config
mv zsh/.zshrc ~/.zshrc


