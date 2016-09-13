set mouse=a
set clipboard=unnamed

let g:syntastic_enable_signs=1
" Source:
source ~/.vim/vundle.vim
source ~/.vim/global.vim
source ~/.vim/functions.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/auto_commands.vim

set enc=utf-8
set fillchars=vert:\
highlight VertSplit ctermfg=DarkGray cterm=none gui=none

syntax enable
set background=dark
silent! colorscheme solarized

" Auto handle go imports
let g:go_fmt_command = "goimports"

let g:airline_left_sep=' '
let g:airline_right_sep=' '


if filereadable(expand("session.vim"))
  source session.vim
endif

" use Silver Searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" have ctrlp use the gitignore settings
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
