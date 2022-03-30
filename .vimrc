"Plug-ins
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'jez/vim-superman'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'plasticboy/vim-markdown'
Plug 'sirver/ultisnips'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'klen/python-mode'
Plug 'junegunn/fzf.vim'

call plug#end()

"Reduce lag with Esc
set timeout timeoutlen=1000 ttimeoutlen=10

"Indent settings
set tabstop=4
set shiftwidth=4

"Status settings
set laststatus=2
set cmdheight=2

"Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

"Useful settings
set history=700
set undolevels=700

"Some more settings
set ruler
set mouse=a
set tw=79
set wrap
set textwidth=0 wrapmargin=0
set fo-=t
set number
set relativenumber

set colorcolumn=100
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=235 guibg=#2c2d27
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=3   ctermfg=1
highlight Search       ctermbg=1   ctermfg=3
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=3   ctermfg=1
highlight SpellBad     ctermbg=0   ctermfg=1

"Turn off auto files
set nocompatible
set nocp
set nobackup
set nowritebackup
set noswapfile

"Unmap arrow keys
no <down> <Nop>
no <right> <Nop>
no <left> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <right> <Nop>
ino <left> <Nop>
ino <up> <Nop>

"Map Esc to "jk"
inoremap jk <Esc>`^

"Remap leader key to , key
:let mapleader = ","

"Map pane navigation to ctrl-[hjkl]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"""""""""""""""""""""""""""""Plugins"""""""""""""""""""""""""""""
"Vim-airline settings
let g:airline_theme='raven'
hi Normal guibg=NONE ctermbg=NONE

"NerdTree settings
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Syntactic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers=['flake8']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"VIM Markdown Cancel markdown folding
let g:vim_markdown_folding_disabled = 1

