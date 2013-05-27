" Vim color file
colors myease 
" Maintainer:	Patrick Gerdsmeier <patrick@gerdsmeier.net>
" Last Change:	2005 July 14
" Easy Theme

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "myease"

hi Normal                             				      	guifg=Black guibg=White

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg      term=standout        ctermbg=DarkRed ctermfg=White   	guibg=Red guifg=White
hi IncSearch     term=reverse         cterm=reverse                   	gui=reverse
hi ModeMsg       term=bold            cterm=bold                      	gui=bold
hi StatusLine    term=reverse,bold    cterm=reverse,bold              	gui=reverse,bold
hi StatusLineNC  term=reverse         cterm=reverse                   	gui=reverse
hi VertSplit     term=reverse         cterm=reverse                   	gui=reverse
hi Visual        term=reverse         cterm=reverse                   	gui=reverse guifg=#e0e0e0 guibg=fg
hi VisualNOS     term=underline,bold  cterm=underline,bold            	gui=underline,bold
hi DiffText      term=reverse         cterm=bold ctermbg=DarkRed      	gui=bold guibg=Red
hi Cursor                                                             	guibg=Red guifg=NONE
hi lCursor                                                            	guibg=Red guifg=NONE
hi Directory     term=bold            ctermfg=DarkBlue                	guifg=#0080ff
hi LineNr        term=underline       				      	guifg=Black
hi MoreMsg       term=bold            ctermfg=DarkGreen               	gui=bold guifg=Green
hi NonText       term=bold            ctermfg=Blue                    	gui=bold guifg=#a0c0ff guibg=White
hi Question      term=standout        ctermfg=DarkGreen               	gui=bold guifg=Green
hi Search        term=reverse         ctermbg=Yellow ctermfg=NONE     	guibg=#e0ff40 guifg=NONE
hi SpecialKey    term=bold            ctermfg=DarkBlue                	guifg=Blue
hi Title         term=bold            ctermfg=DarkMagenta             	gui=bold guifg=Magenta
hi WarningMsg    term=standout        ctermfg=DarkRed                 	guifg=Red
hi WildMenu      term=standout        ctermbg=Yellow ctermfg=Black    	guibg=Yellow guifg=Black
hi Folded        term=standout        ctermbg=Grey ctermfg=DarkBlue   	guibg=LightGrey guifg=DarkBlue
hi FoldColumn    term=standout        ctermbg=Grey ctermfg=DarkBlue   	guibg=Grey guifg=DarkBlue
hi DiffAdd       term=bold            ctermbg=LightBlue               	guibg=LightBlue
hi DiffChange    term=bold            ctermbg=LightMagenta            	guibg=LightMagenta
hi DiffDelete    term=bold            ctermfg=Blue ctermbg=LightCyan  	gui=bold guifg=Blue guibg=LightCyan
	
" Colors for syntax highlighting
hi Comment                            ctermfg=LightBlue               	guifg=#b0b0b0
hi Constant      term=bold            ctermfg=Blue                    	guifg=#0080ff
hi Type          term=bold            ctermfg=DarkRed                 	guifg=#ff8000
hi Special       term=bold            ctermfg=DarkRed                 	guifg=#ff8000
hi PreProc                            ctermfg=DarkRed                 	guifg=#ff8000
hi Statement     term=bold            cterm=bold ctermfg=DarkRed      	gui=bold guifg=Red
hi Ignore                             ctermfg=Grey                   	guifg=Black

" Colors for Whitespaces
"syn match Tab "\t"
"hi def Tab                            ctermbg=Grey                    	guibg=#f8f8f8
