# My dotfiles

Configuration and setup script for Vim, Tmux, and Zsh.

## Installation

1. Install [iTerm2](https://iterm2.com/).
1. Clone this repo and run the setup script.

    ```bash
    git clone https://github.com/hsuanhauliu/dotfiles.git
    cd dotfiles
    ./ubuntu_setup.sh
    ```

1. Press `prefix + I` to install all TMUX plugins through tpm inside of a tmux session.
1. Download Meslo Nerd Font from [here](https://github.com/romkatv/powerlevel10k#manual-font-installation) then change your shell settings to use the font.
1. Change your iTerm2 font to Meslo and color preset to Snazzy.
    Under Settings > Profiles > Text > Font
    Under Settings > Profiles > Colors > Color Presets: Snazzy
1. [Optional] `p10k configure` to configure your theme.

### Vim Plugin List

- [Pathogen](https://github.com/tpope/vim-pathogen): VIM Plugin Manager.
- [Vim Airline Themes](https://github.com/vim-airline/vim-airline-themes): VIM theme.
- [VIM Superman](https://github.com/jez/vim-superman): read `man` pages with VIM.
- [FUGITIVE.VIM](https://github.com/tpope/vim-fugitive): Git wrapper for VIM.
- [NerdTree](https://github.com/preservim/nerdtree): file system explorer for the Vim
- [vim-surround](https://github.com/tpope/vim-surround): delete/change/add parentheses/quotes/XML-tags/much more with ease.
- [UltiSnips](https://github.com/sirver/ultisnips): ultimate solution for snippets in VIM.
- [Syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for VIM.
- [EasyMotion](https://github.com/easymotion/vim-easymotion): Vim motions on speed.
- [Python Mode](https://github.com/klen/python-mode): Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
- [Vim-Go](https://github.com/fatih/vim-go): Go development plugin for Vim.

### Resources

- [VIM](https://www.vim.org/) - Find VIM plugins [here](https://vimawesome.com/).
- [ZSH](https://github.zshell.dev/) - A better terminal. Combine with [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh), configuring your z-shell is super easy. Download ZSH themes [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes).

### Notes

- Change your default shell to to z-shell with `chsh -s /bin/zsh` command.
