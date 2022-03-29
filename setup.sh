#! /bin/bash

# Install packages
sudo apt install git vim zsh tmux xsel # The tmux-yank plugin requires xsel or xclip to be installed (on Ubuntu).
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .vimrc .zshrc .tmux.conf ~/
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install plugins
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

## Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## VIM
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone https://github.com/jez/vim-superman ~/.vim/bundle/vim-superman
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/tpope/vim-surround.git  ~/.vim/bundle/vim-surround
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
git clone https://github.com/sirver/ultisnips.git ~/.vim/bundle/ultisnips
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/easymotion/vim-easymotion.git ~/.vim/bundle/vim-easymotion
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/klen/python-mode.git ~/.vim/bundle/python-mode
cd ~/.vim/bundle/python-mode
git submodule update --init --recursive
cd -

## ZSH
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
