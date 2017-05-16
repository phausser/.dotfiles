" pat's ~/.vimrc

" Escape vi
set nocompatible

" Highlighting and colors
syntax on
filetype plugin indent on
colors myease
colors monokai

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
"set list listchars=tab:»·,trail:·

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

" Files, backups and undo
set nobackup
set noswapfile

" NERDTree configuration
map <Leader>n :NERDTreeToggle<CR>

" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <silent><C-b> :CtrlPBuffer<CR>
map <silent><C-l> :CtrlPLine<CR>

" Airline
set laststatus=2

" gitgutter
let g:gitgutter_highlight_lines = 1
let g:gitgutter_signs = 0
