" Vim color scheme
"
" Name:        rational.vim
" Maintainer:  John Weir (john@smokinggun.com)
" License:     public domain
"
" Colors

let s:colors =
  \ {
  \ 'black'      : '#000000',
  \ 'white'      : '#FFFFFF',
  \ 'foreground' : '#D0D0D0',
  \ 'foreground-' : '#998866',
  \ 'bright'     : '#A0FFFF',
  \ 'dark'       : '#666666',
  \ 'hot+'        : '#FF9933',
  \ 'background' : '#222222',
  \ 'background-' : '#111111',
  \ 'hot'        : '#FFAA33',
  \ 'hot-'       : '#F46F00',
  \ 'cool'       : '#66A0EF',
  \ 'neutral'    : '#BBD066',
  \ 'bold'       : 'bold',
  \ 'italic'     : 'italic',
  \ 'underline'  : 'underline',
  \ 'NONE'       : 'NONE'
  \ }

command! -nargs=+ Hi call CustomHighlighter(<f-args>)
function! CustomHighlighter(name, ...)
    let colour_order = ['guifg', 'guibg', 'gui']
    let command = 'hi ' . a:name
    if (len(a:000) < 1) || (len(a:000) > (len(colour_order)))
        echoerr "No colour or too many colours specified"
    else
        for i in range(0,len(a:000)-1)
            let color = s:colors[a:000[i]]
            let command .= ' ' . colour_order[i] . '=' . color
        endfor
        exe command
    endif
endfunc


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "famedriver"

Hi Normal foreground background
hi Cursor                    guibg=#FF33FF guifg=#FFFFFF
hi CursorLine                guibg=NONE
Hi LineNr dark
hi Search                    guibg=#FFCC55
Hi ExtraWhitespace hot background-
hi Visual                    guibg=#555555
hi JSLintError gui=undercurl 
Hi Special hot background
hi Error guifg=#FFFFFF guibg=#FF0000
Hi TabLine black dark
Hi TabLineSel black neutral
Hi VertSplit background- background-
set fillchars=vert:_
hi StatusLine guibg=#999999 guifg=black gui=NONE
hi StatusLineNC guibg=#666666 guifg=black gui=NONE

" -----
" line used for closed folds
hi Folded                    guifg=#F0F0F0 guibg=#444444 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#AAAAAA gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F0F0F0 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#AAAAAA gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#555555 gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


"rubyComment
Hi Comment dark background italic
Hi Todo dark background bold

"rubyPseudoVariable
"nil, self, symbols, etc
Hi Constant cool

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
Hi Define hot

"rubyFunction
Hi Function hot
Hi rubyFunction hot
Hi rubyRailsMethod bright
"rubyInterpolation
hi link Delimiter            String

"rubyError, rubyInvalidVariable
Hi Error hot

"rubyIdentifier
"@var, @@var, $var, etc
Hi Identifier cool

"rubyInclude
"include, autoload, extend, load, require
Hi Include hot

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
Hi Keyword bright

" same as define
Hi Macro foreground
"
"rubyInteger
Hi Number neutral

" #if, #else, #endif
Hi PreCondit hot

" generic preprocessor
Hi PreProc foreground
"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
Hi Statement foreground- background NONE

"rubyString
Hi String neutral

Hi Title foreground

"rubyConstant
Hi Type hot+ background NONE
hi DiffAdd                   guifg=#999999 guibg=#144212
hi DiffDelete                guifg=#999999 guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#EEEEEE
hi xmlTagName                guifg=#EEEEEE
hi xmlEndTag                 guifg=#EEEEEE

" Spelling
Hi SpellBad black hot
Hi SpellCap black neutral

" Ruby coloring
Hi rubyMethod hot
Hi rubyDefine dark
Hi rubyBeginEnd dark
Hi rubyClassDeclaration foreground-

" Javascript coloring
Hi javascriptFuncName hot+
