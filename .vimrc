" pat's ~/.vimrc


set nocompatible
let mapleader = ","


" Text
syntax on
filetype plugin indent on

set encoding=utf-8
set number
set ruler
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set diffopt=vertical


" Appearance
colors molokai
set t_Co=256
set list listchars=tab:>>,trail:.,precedes:<,extends:>
set cursorline
set cursorcolumn


" Gui
nnoremap <C-i> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
set wildchar=<Tab> wildmenu wildmode=full


" Editing
set backspace=indent,eol,start
set autoread


" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase


" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()


" Backups to ~/.backups
if !isdirectory($HOME."/.backups")
    silent! execute "!mkdir ~/.backups/"
endif
set backup
set backupdir=~/.backups
set noswapfile


" Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


" NERDTree
Plug 'https://github.com/scrooloose/nerdtree.git'
map <silent><C-o> :NERDTreeToggle<CR>


" CtrlP
Plug 'https://github.com/kien/ctrlp.vim.git'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <silent><C-b> :CtrlPBuffer<CR>
map <silent><C-l> :CtrlPLine<CR>


" Airline
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='cool'
let g:airline_powerline_fonts=0


" vim-gitgutter
Plug 'https://github.com/airblade/vim-gitgutter.git'
let g:gitgutter_highlight_lines = 0
let g:gitgutter_signs = 1
set updatetime=250


" VimWiki
Plug 'https://github.com/vimwiki/vimwiki.git'
let g:vimwiki_list = [{'path': '~/.vimwiki' }]


" Surround
Plug 'https://github.com/tpope/vim-surround'


" Org Mode
Plug 'https:///github.com/jceb/vim-orgmode'
Plug 'https://github.com/tpope/vim-speeddating'


" Syntastic
Plug 'https://github.com/scrooloose/syntastic'


" Rainbow Brackets
Plug 'https://github.com/luochen1990/rainbow'
let g:rainbow_active = 1


" Tetris <Leader>te
Plug 'https://github.com/vim-scripts/TeTrIs.vim.git'


" Import .vimrc.plug
if filereadable(glob("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif


call plug#end()


" Import .vimrc.local
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif

