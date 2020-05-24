# My dotfiles

All files should be placed in the /home directory.

## 1. [Tmux](https://github.com/tmux/tmux) - Terminal Multiplexer. Tmux plugins can be downloaded [here](https://github.com/tmux-plugins) and package manager can be downloaded [here](https://github.com/tmux-plugins/tpm).

Read the [manual page](https://www.systutorials.com/docs/linux/man/1-tmux/) for details.

### Install Tmux Plugin Manager (TPM)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

The tmux-yank plugin requires xsel or xclip to be installed (on Ubuntu).

```bash
sudo apt-get install xsel
```

Press `prefix + i` to install all plugins through tpm inside of a tmux session.


## 2. [VIM](https://www.vim.org/) - Download VIM plugins [here](https://vimawesome.com/).

### [Pathogen](https://github.com/tpope/vim-pathogen): Package Manager

```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
### Vim Plugins

#### [VIM Airline](https://vimawesome.com/plugin/vim-airline-superman)

#### [Vim Airline Themes](https://github.com/vim-airline/vim-airline-themes)

```bash
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
```

#### [FUGITIVE.VIM](https://vimawesome.com/plugin/fugitive-vim)

```bash
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
```

#### [NerdTree](https://vimawesome.com/plugin/nerdtree-red)

```bash
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
```

#### [vim-surround](https://vimawesome.com/plugin/surround-vim)

```bash
git clone https://github.com/tpope/vim-surround  ~/.vim/bundle/vim-surround
```

#### [VIM Markdown](https://vimawesome.com/plugin/markdown-syntax)

```bash
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/vim-markdown
```

#### [UltiSnips](https://vimawesome.com/plugin/ultisnips)

```bash
git clone https://github.com/sirver/ultisnips ~/.vim/bundle/ultisnips
```

#### [Syntastic](https://vimawesome.com/plugin/syntastic)

```bash
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
```

_Note: this requires syntax checker for the language you're using to be installed (i.e. pylint for PYthon)_

#### [EasyMotion](https://vimawesome.com/plugin/easymotion)

```bash
git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion
```

#### [Python Mode]()

```bash
git clone https://github.com/klen/python-mode ~/.vim/bundle/python-mode
cd ~/.vim/bundle/python-mode
git submodule update --init --recursive
```

#### [Vim-Go](https://vimawesome.com/plugin/vim-go-sparks-fly)

```bash
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
```


## 3. [ZSH](http://ohmyz.sh/) - A better terminal. Combine with [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh), configuring your z-shell is super easy. Download ZSH themes [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes).


### [Powerlevel10k Theme](https://github.com/powerline/powerline)

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

- Download Meslo Nerd Font from [here](https://github.com/romkatv/powerlevel10k#manual-font-installation) then change your shell settings to use the font.

- Source the config file `source ~/.zshrc` to apply changes and trigger the setup wizard. If the wizard UI doesn't show up, type `p10k configure` to trigger it explicitly.

### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


### Finally...

- Try out the new config by going into z-shell manually `zsh` before setting it as default shell.
- Change your default shell to to z-shell with `chsh -s /bin/zsh` command.
