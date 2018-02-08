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

"" give it a name and set the background
let colors_name="true-monochrome-light"
set background=light


hi IncSearch       guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=ITALIC       cterm=NONE
hi Search          guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=ITALIC       cterm=NONE
hi Visual          guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=ITALIC       cterm=NONE
hi VisualNOS       guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=ITALIC       cterm=NONE

hi ALEErrorLine        guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEWarningLine      guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEInfoLine         guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=white    gui=ITALIC       cterm=BOLD

hi ALEErrorSign        guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEWarningSign      guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEInfoSign         guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEStyleErrorSign   guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD
hi ALEStyleWarningSign guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD

hi ALEWarning        guifg=#000000    guibg=#FFCC00    ctermfg=red    ctermbg=white    gui=ITALIC       cterm=BOLD

hi Cursor          guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=NONE         cterm=NONE
hi CursorColumn    guifg=#000000    guibg=#FFCC00    ctermfg=black     ctermbg=red    gui=NONE         cterm=NONE
hi CursorLine      guifg=#000000    guibg=#FFCC00    ctermfg=black     ctermbg=red    gui=NONE         cterm=NONE

hi Comment         guifg=#495057    guibg=#FFFFFF    ctermfg=gray     ctermbg=white    gui=ITALIC       cterm=NONE
hi DiffChange      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi DiffDelete      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi DiffText        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Directory       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Error           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Folded          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Function        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Identifier      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Ignore          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Label           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi LineNr          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi MatchParen      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi ModeMsg         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi MoreMsg         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi NonText         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Normal          guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi PmenuSbar       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi PmenuThumb      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi PreProc         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Special         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi SpecialKey      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi Statement       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi StatusLine      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi StatusLineNC    guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=ITALIC       cterm=NONE
hi StorageClass    guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Structure       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi TabLine         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TabLineFill     guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi TabLineSel      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Title           guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi Todo            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Todo            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=UNDERLINE    cterm=UNDERLINE
hi Type            guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi TypeDef         guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi Underlined      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=UNDERLINE    cterm=UNDERLINE
hi VertSplit       guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi WarningMsg      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi WildMenu        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi cucumberTags    guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi htmlTagN        guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=BOLD         cterm=BOLD
hi rubySymbol      guifg=#495057    guibg=#FFFFFF    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE

"" black fg w/white bg
hi Constant        guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi DiffAdd         guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi Number          guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi Pmenu           guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=BOLD         cterm=BOLD
hi String          guifg=#495057    guibg=#FFFFFF    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE

