#!/bin/zsh
chsh -s $(which zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp tmux/tmux.conf ~/.tmux.conf
rm -rf ~/.config/nvim; cp -R nvim ~/.config/
cp zsh/zshrc ~/.zshrc
rm -rf ~/powerlevel10 || true
cp -R powerlevel10k/ ~/
cp powerlevel10k/.p10k.zsh ~/.p10k.zsh
