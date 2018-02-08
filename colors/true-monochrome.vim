"" thanks to greygrey from themebow for a running start!
"" http://themebow.com/theme/313
"" find me online at:
"" https://github.com/ryanpcmcquen/true-monochrome_vim

"" clear out any previous highlighting
hi clear
"" if vim is v5.8 or greater, reset syntax
if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

set background=dark
highlight clear

if exists("syntax_on")
   syntax reset
endif

let colors_name = "true-monochrome"
""
"" now, on to the good stuff!
""

hi ALEErrorLine        guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEWarningLine      guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEInfoLine         guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD

hi ALEErrorSign        guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEWarningSign      guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEInfoSign         guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEStyleErrorSign   guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD
hi ALEStyleWarningSign guifg=#FFFFFF    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=BOLD

hi ALEWarning        guifg=#FFFFFF    guibg=#111111    ctermfg=gray    ctermbg=black    gui=ITALIC       cterm=BOLD

"" white fg w/black bg
" set t_Co=256
highlight Normal ctermfg=white ctermbg=black 
highlight Cursor ctermfg=red ctermbg=white 
hi CursorColumn    ctermfg=red     ctermbg=cyan    gui=NONE         cterm=NONE
hi CursorLine      ctermfg=red     ctermbg=cyan    gui=NONE         cterm=NONE

highlight Keyword ctermfg=White 
highlight Define ctermfg=White 
highlight Comment ctermfg=Gray
highlight Type ctermfg=White 
highlight rubySymbol ctermfg=WHite 
highlight Identifier ctermfg=White 
highlight rubyStringDelimiter ctermfg=White
highlight rubyInterpolation ctermfg=White 
highlight rubyPseudoVariable ctermfg=WHite 
highlight Constant ctermfg=White 
highlight Function ctermfg=White 
highlight Include ctermfg=White 
highlight Statement ctermfg=White
highlight String ctermfg=White 
highlight Search ctermbg=White 
