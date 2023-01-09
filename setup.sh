#!/bin/zsh
chsh -s $(which zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo apt-get update
sudo apt-get install tmux -y

mkdir -p ~/nvim
wget https://github.com/neovim/neovim/releases/download/v0.8.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz --directory /usr/local/bin/ --directory ~/nvim


cp tmux/tmux.conf ~/.tmux.conf
rm -rf ~/.config/nvim; cp -R nvim ~/.config/
cp zsh/zshrc ~/.zshrc
cp -R powerlevel10k/ ~/
cp powerlevel10k/.p10k.zsh ~/.p10k.zsh

. ~/.zshrc

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
