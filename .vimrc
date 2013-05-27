" pat's ~/.vimrc

" Escape vi
set nocompatible

" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Highlighting and colors
syntax on
filetype plugin indent on
colors myease

" Encoding
set encoding=utf-8

" NERDTree configuration
map <Leader>n :NERDTreeToggle<CR>

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
set list listchars=tab:»·,trail:·

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
