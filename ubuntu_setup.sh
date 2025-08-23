#! /bin/bash

set -e

# Install packages
sudo apt -y install vim zsh tmux xsel # The tmux-yank plugin requires xsel or xclip to be installed (on Ubuntu).
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .vimrc .zshrc .tmux.conf ~/
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Base16-shell color theme
git clone --depth 1 https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

## Tmux plug-in manager. Install via ctrl+a+I.
git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## VIM plug-in manager. Install plugins via :PlugInstall command inside of VIM.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## ZSH plug-ins
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
