" Add RebuildTagsFile function/command
function! s:RebuildTagsFile()
  silent !ctags -R --exclude=coverage --exclude=files --exclude=public --exclude=log --exclude=tmp --exclude=vendor *
endfunction
command! -nargs=0 RebuildTagsFile call s:RebuildTagsFile()


" Removes trailing spaces
hi ExtraWhitespace guibg=#000000 
function! TrimWhiteSpace()
  %s/\s*$//
    ''
    :endfunction

map <C-\> :call TrimWhiteSpace()<CR>
map! <C-\> :call TrimWhiteSpace()<CR>

match ExtraWhitespace /\s\+\%#\@<!$/

