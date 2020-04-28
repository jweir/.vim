" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  silent !ctags -R --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()

function! s:RubocopAuto()
  !rubocop -a %
endfunction
command! -nargs=0 RubocopAuto call s:RubocopAuto()

" Removes trailing spaces
hi ExtraWhitespace guibg=#000000 
function! TrimWhiteSpace()
  %s/\s*$//
    ''
    :endfunction

map <C-\> :call TrimWhiteSpace()<CR>
map! <C-\> :call TrimWhiteSpace()<CR>

match ExtraWhitespace /\s\+\%#\@<!$/

