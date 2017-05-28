" pat's ~/.vimrc

" Escape vi
set nocompatible

" Highlighting and colors
syntax on
filetype plugin indent on
set t_Co=256
colors molokai
set cursorline

" Encoding
set encoding=utf-8

" Line numbers
set number
set ruler

" Text, tab and indent
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Show trailing spaces and highlight hard tabs
set list listchars=tab:>>,trail:.,precedes:<,extends:>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Files, backups and undo
set nobackup
set noswapfile

" Tab handling
nnoremap <C-i> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

" Misc
let mapleader = ","
set wildchar=<Tab> wildmenu wildmode=full
set diffopt=vertical

" Pathogen
if filereadable(glob("~/.pathogen_disabled"))
    source ~/.pathogen_disabled
endif
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" NERDTree configuration
map <silent><C-n> :NERDTreeToggle<CR>

" CtrlP
" set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <silent><C-b> :CtrlPBuffer<CR>
map <silent><C-l> :CtrlPLine<CR>

" Airline
set laststatus=2
let g:airline_theme='molokai'

" gitgutter
let g:gitgutter_highlight_lines = 1
let g:gitgutter_signs = 0
set updatetime=250

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki' }]

" Local config
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
