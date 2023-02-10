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
let colors_name="true-monochrome"
set background=dark

hi IncSearch       guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi Search          guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi Visual          guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE
hi VisualNOS       guifg=#000000    guibg=#FFCC00    ctermfg=black    ctermbg=yellow    gui=ITALIC       cterm=NONE

hi ALEErrorLine        guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEWarningLine      guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEInfoLine         guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=ITALIC       cterm=NONE

hi ALEErrorSign        guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEWarningSign      guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEInfoSign         guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEStyleErrorSign   guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE
hi ALEStyleWarningSign guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE

hi ALEWarning        guifg=#993300    guibg=#111111    ctermfg=red    ctermbg=black    gui=ITALIC       cterm=NONE

hi Cursor          guifg=#000000    guibg=#FFCC00    ctermfg=yellow    ctermbg=red    gui=NONE         cterm=NONE
hi CursorColumn    guifg=#000000    guibg=#FFCC00    ctermfg=white     ctermbg=red    gui=NONE         cterm=NONE
hi CursorLine      guifg=#000000    guibg=#FFCC00    ctermfg=white     ctermbg=red    gui=NONE         cterm=NONE

hi Comment         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=ITALIC       cterm=NONE
hi DiffChange      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi DiffDelete      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi DiffText        guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Directory       guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Error           guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Folded          guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Function        guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Identifier      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Ignore          guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Label           guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi LineNr          guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi MatchParen      guifg=#111111    guibg=#CCCC00    ctermfg=white     ctermbg=yellow    gui=NONE         cterm=NONE
hi ModeMsg         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi MoreMsg         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi NonText         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Normal          guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSbar       guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=ITALIC       cterm=NONE
hi PmenuThumb      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi PreProc         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Special         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi SpecialKey      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=ITALIC       cterm=NONE
hi Statement       guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi StatusLine      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi StatusLineNC    guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=ITALIC       cterm=NONE
hi StorageClass    guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Structure       guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi TabLine         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineFill     guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineSel      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Title           guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Todo            guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Todo            guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE
hi Type            guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi TypeDef         guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi Underlined      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE
hi VertSplit       guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi WarningMsg      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi WildMenu        guifg=#222233    guibg=#D0D0EE    ctermfg=black     ctermbg=white    gui=NONE         cterm=NONE
hi cucumberTags    guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi htmlTagN        guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE
hi rubySymbol      guifg=#D0D0EE    guibg=#111111    ctermfg=white     ctermbg=black    gui=NONE         cterm=NONE

hi Constant        guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi DiffAdd         guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi Number          guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi Pmenu           guifg=#D0D0EE    guibg=#222222    ctermfg=white    ctermbg=gray    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#333344    guibg=#DDDDDD    ctermfg=black    ctermbg=white    gui=NONE         cterm=NONE
hi String          guifg=#D0D0EE    guibg=#111111    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
