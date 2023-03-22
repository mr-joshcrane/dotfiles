#!/bin/sh
sudo apt install zsh tmux -y
sudo chsh -s $(which zsh)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf; cd ~/dotfiles
rm -rf ~/powerlevel10k; cp -R powerlevel10k ~/
rm -rf ~/.config/nvim; cp -R nvim ~/.config/nvim/
cp ./zsh/.zshrc ~/.zshrc
cp ./tmux/tmux.conf ~/.tmux.conf
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"w
brew install neovim
brew install golang
brew install node
exit
