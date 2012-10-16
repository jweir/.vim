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

function! QuickFixOpenAll()
  if empty(getqflist())
    return
  endif
  let s:prev_val = ""
  for d in getqflist()
    let s:curr_val = bufname(d.bufnr)
    if (s:curr_val != s:prev_val)
      exec "edit " . s:curr_val
    endif
    let s:prev_val = s:curr_val
  endfor
endfunction

command! QuickFixOpenAll         call QuickFixOpenAll()
