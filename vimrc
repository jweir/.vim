set rtp+=/usr/local/go/misc/vim
filetype plugin indent on
syntax on

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

if filereadable(expand("~/.vim/custom_vimrc"))
  source ~/.vim/custom_vimrc
endif

if filereadable(expand("session.vim"))
  source session.vim 
endif
