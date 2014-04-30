set mouse=a
set clipboard=unnamed

let g:syntastic_enable_signs=1
" Source:
source ~/.vim/vundle.vim
source ~/.vim/global.vim
source ~/.vim/functions.vim
source ~/.vim/statusbar.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/auto_commands.vim

set enc=utf-8
set fillchars=vert:\ 
highlight VertSplit ctermfg=DarkGray cterm=none gui=none

syntax enable
set background=dark
colorscheme solarized
 
if filereadable(expand("session.vim"))
  source session.vim 
endif

" use Silver Searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'
