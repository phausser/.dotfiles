" NEOVIM CONFIG by patrickhausser

" Core settings
let mapleader = ','
filetype plugin indent on

" UI
set termguicolors
set encoding=utf-8
set list listchars=tab:>>,trail:.,precedes:<,extends:>
set number
set ruler
set cursorline
set cursorcolumn
set colorcolumn=80

" Command line
set history=100
set showcmd

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Text
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Backups
set noswapfile
set nobackup
set nowritebackup

" Theme
syntax enable
colorscheme monokai

" Plugins (vim-plug)
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/elixir-editors/vim-elixir.git'
Plug 'https://github.com/slashmili/alchemist.vim.git'
Plug 'https://github.com/vim-scripts/TeTrIs.vim.git'

call plug#end()

" Mappings
nnoremap <silent><C-n> :NERDTreeToggle<CR>

" Plugin settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'cool'
let g:airline_powerline_fonts = 1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:gitgutter_highlight_lines = 0
let g:gitgutter_signs = 1
set updatetime=250

let g:vimwiki_list = [{'path': '~/.vimwiki'}]

" Local overrides
if filereadable(expand('~/.nvim'))
    source ~/.nvim
endif

