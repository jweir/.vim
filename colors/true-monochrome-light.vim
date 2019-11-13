j"" thanks to greygrey from themebow for a running start!
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

"" give it a name and set the background
let colors_name="true-monochrome-light"
set background=light

" General colors
hi IncSearch       guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi Search          guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi Visual          guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi VisualNOS       guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE

hi ALEErrorLine        guifg=#FFFFFF    guibg=#996600    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEWarningLine      guifg=#000000    guibg=#FFEECC    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEInfoLine         guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD

hi ALEErrorSign        guifg=#000000    guibg=#FF9900    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEWarningSign      guifg=#000000    guibg=#FF9900    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEInfoSign         guifg=#000000    guibg=#FF9900    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEStyleErrorSign   guifg=#000000    guibg=#FF9900    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEStyleWarningSign guifg=#000000    guibg=#FF9900    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD

hi ALEWarning        guifg=#000000    guibg=#FFAA00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD

hi Cursor          guifg=#000000    guibg=#00CCFF    ctermfg=yellow    ctermbg=red    gui=NONE         cterm=NONE
hi CursorColumn    guifg=#000000    guibg=#FFCC00    ctermfg=black     ctermbg=red    gui=NONE         cterm=NONE
" spring green
hi CursorLine      guifg=#000000    guibg=#FFEECC    ctermfg=black     ctermbg=42   gui=NONE         cterm=NONE 

hi Comment         guifg=#495057    guibg=#FFFFFF    ctermfg=gray     ctermbg=white    gui=ITALIC       cterm=NONE
hi DiffChange      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi DiffDelete      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi DiffText        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Directory       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Error           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Folded          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Function        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Identifier      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Ignore          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Label           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi LineNr          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi MatchParen      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=yellow    gui=NONE         cterm=BOLD
hi ModeMsg         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi MoreMsg         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi NonText         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE

hi Normal          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
if has('gui_running') || has('nvim') 
    hi Normal 		guifg=#495057 guibg=#FFFFFF else
    " Set the terminal default background and foreground colors, thereby
    " improving performance by not needing to set these colors on empty cells.
    " hi Normal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    " let &t_ti = &t_ti . "\033]10;#495057\007\033]11;
    " FFFFFF\007"
    " let &t_te = &t_te . "\033]100\007\033]111\007"
    let &t_ut=''
endif

hi PmenuSbar       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi PmenuThumb      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi PreProc         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Special         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi SpecialKey      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi Statement       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi StatusLine      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi StatusLineNC    guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi StorageClass    guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Structure       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TabLine         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TabLineFill     guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TabLineSel      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Title           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Todo            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Todo            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=UNDERLINE    cterm=UNDERLINE
hi Type            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TypeDef         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Underlined      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=UNDERLINE    cterm=UNDERLINE
hi VertSplit       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi WarningMsg      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi WildMenu        guifg=#495057    guibg=#FFFFFF    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi htmlTagN        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi rubySymbol      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE

hi Constant        guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi DiffAdd         guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi Number          guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi Pmenu           guifg=#495057    guibg=#EEEEFF    ctermfg=gray    ctermbg=black    gui=BOLD         cterm=NONE
hi PmenuSel        guifg=#495057    guibg=#FFFFEE    ctermfg=white    ctermbg=black    gui=BOLD         cterm=BOLD
hi String          guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE

