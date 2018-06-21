" Neovim config init.vim by pat

" SETTINGS
let mapleader=','

" screen
set termguicolors
set encoding=utf-8
set list listchars=tab:>>,trail:.,precedes:<,extends:>
set number
set ruler
set cursorcolumn
set cursorline
" cmd
set history=100
set showcmd
" search
set incsearch
set hlsearch
set ignorecase
set smartcase
" text
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set colorcolumn=80
" backup
set noswapfile
set nobackup
set nowritebackup
" etc
syntax enable
colorscheme monokai

" PLUG
call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/airblade/vim-gitgutter.git'

Plug 'https://github.com/elixir-editors/vim-elixir.git'
Plug 'https://github.com/slashmili/alchemist.vim.git'

Plug 'https://github.com/vim-scripts/TeTrIs.vim.git'

call plug#end()

" nt
map <silent><C-n> :NERDTreeToggle<cr>
" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='cool'
let g:airline_powerline_fonts=1
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" vimgutter
let g:gitgutter_highlight_lines=0
let g:gitgutter_signs=1
set updatetime=250

" Local config
if filereadable(glob("~/.nvim"))
    source ~/.nvim
endif

