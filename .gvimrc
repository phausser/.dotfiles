" ~/.gvimrc by patrickhausser

" Set font according to system
if has('macunix')
    set guifont=Fira\ Code:h16
    if executable($SHELL)
        let &shell = $SHELL
    endif
    set macligatures
elseif has('win32') || has('win64')
    set guifont=Bitstream\ Vera\ Sans\ Mono:h10
elseif has('unix') || has('win32unix')
    set guifont=Fira\ Code\ 11
    if executable($SHELL)
        let &shell = $SHELL
    endif
endif

" Hide Toolbar from MacVim
set guioptions-=T

