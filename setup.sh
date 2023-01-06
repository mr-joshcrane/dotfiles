#!/bin/zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo apt-get update && sudo apt-get install tmux -y

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
cp ./nvim-linux64/bin/nvim /usr/local/bin/nvim

cp tmux/tmux.conf ~/.tmux.conf
rm -rf ~/.config/nvim; cp -R nvim ~/.config/
cp zsh/zshrc ~/.zshrc
cp -R powerlevel10k/ ~/powerlevel10k/

. ~/.zshrc
