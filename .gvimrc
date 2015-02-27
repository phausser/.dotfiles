" pat's ~/.gvimrc

" Set font according to system
fun! MySys()
    if has('win16') || has('win32') || has('win64')
        return "win"
    elseif has('mac') || has('maxunix')
        return "mac"
    elseif has("unix") || has("win32unix")
        return "unix"
    else
        return "other"
    endif
endfun

if MySys() == "mac"
    set guifont=Menlo:h14
    set shell=/bin/bash
elseif MySys() == "win"
    set guifont=Bitstream\ Vera\ Sans\ Mono:h10
elseif MySys() == "unix"
    set guifont=Monospace\ 10
    set shell=/bin/bash
endif

" Hide Toolbar from MacVim
set guioptions-=T
