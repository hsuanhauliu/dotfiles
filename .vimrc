filetype off
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

colorscheme base16-railscasts

"Reduce lag with Esc
set timeout timeoutlen=1000 ttimeoutlen=10

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
"set colorcolumn=80
set relativenumber
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
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

"Cancel markdown folding
let g:vim_markdown_folding_disabled = 1

"Vim-airline settings
let g:airline_theme='base16'
hi Normal guibg=NONE ctermbg=NONE
