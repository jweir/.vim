if exists('b:sorbet_syntax')
  "finish
endif

syntax region SigBlock matchgroup=SigBlockDelimiter start="{" end="}" contained
syntax region SigBlock matchgroup=SigBlockDelimiter start="\<do\>" end="\<end\>" contained transparent skipwhite

" Prevent sorbet elements from being contained by vim-ruby elements.
syntax cluster rubyNotTop add=SigBlock

syntax keyword Sig sig nextgroup=SigBlock skipwhite

"hi def link SigBlockDelimiter rubyDefine

" Match vim-ruby:
" https://github.com/vim-ruby/vim-ruby/commit/19c19a54583c3e7c07dce18b844ae104695c41d7.
" syntax match rubyMagicComment "\c\%<10l#\s*\zs\%(typed\):" contained nextgroup=rubyBoolean skipwhite

let b:sorbet_syntax = 1

hi Sig               cterm=italic ctermfg=240
hi SigBlockDelimiter cterm=italic ctermfg=240
hi SigBlock          cterm=italic ctermfg=240
