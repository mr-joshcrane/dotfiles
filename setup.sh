#!/bin/sh
set -e

dotfiles=$(pwd)

if [ ! -d "$HOME/.local/share/fonts" ]; then
  mkdir -p ~/.local/share/fonts
fi

cd ~/.local/share/fonts && \
curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" \
https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/DroidSansMNerdFontMono-Regular.otf
if [ -d "$HOME/powerlevel10k" ]; then
  rm -rf ~/powerlevel10k
fi

cd ${dotfiles}

if [ -d "${dotfiles}/powerlevel10k" ]; then
  cp -R powerlevel10k ~/
else
  echo "No such directory: ${dotfiles}/powerlevel10k"
  exit 1
fi

if [ -d "$HOME/.config/nvim" ]; then
  rm -rf ~/.config/nvim
fi

if [ -d "${dotfiles}/nvim" ]; then
  cp -R nvim ~/.config/nvim/
else
  echo "No such directory: ${dotfiles}/nvim"
  exit 1
fi

cp -r ./zsh/ ~/

cp ./tmux/tmux.conf ~/.tmux.conf

# Start a new detached tmux session
tmux new-session -d

# Send the Prefix + I key bindings to the session
tmux send-keys -t 0 "C-a" "I"

# Wait for TPM to finish installing plugins
sleep 5

# Kill the detached tmux session
if tmux has-session -t 0 2>/dev/null; then
    tmux kill-session -t 0
fi

# Clone packer.nvim if it's not already installed
if [ ! -d "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
    git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

# Symlink your Neovim configuration
ln -sfnv ~/dotfiles/nvim ~/.config/nvim

# Run Neovim and have packer.nvim install your plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

sudo chsh -s "$(command -v zsh)" "$(whoami)"i
