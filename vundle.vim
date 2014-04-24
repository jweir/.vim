set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles:
Bundle "a.vim"
Bundle "https://github.com/fatih/vim-go"
Bundle "https://github.com/altercation/vim-colors-solarized.git"
Bundle "https://github.com/Lokaltog/vim-powerline.git"
Bundle "ctrlp.vim"
Bundle "git://github.com/vim-scripts/ZoomWin.git"
Bundle "nginx.vim"
Bundle "https://github.com/rking/ag.vim"
Bundle "https://github.com/tpope/vim-abolish.git"

Bundle "git://github.com/kchmck/vim-coffee-script.git"
Bundle "git://github.com/Lokaltog/vim-distinguished.git"
Bundle "git://github.com/Townk/vim-autoclose.git"
Bundle "git://github.com/cespare/vim-bclose.git"
Bundle "https://github.com/majutsushi/tagbar"
Bundle "git://github.com/ervandew/supertab.git"
Bundle "git://github.com/godlygeek/tabular.git"

Bundle "git://github.com/pangloss/vim-javascript.git"

Bundle "git://github.com/scrooloose/nerdcommenter.git"
Bundle "git://github.com/scrooloose/nerdtree.git"
Bundle "git://github.com/scrooloose/syntastic.git"

Bundle "git://github.com/tpope/vim-fugitive.git"
Bundle "git://github.com/tpope/vim-git.git"

Bundle "git://github.com/tpope/vim-haml.git"
Bundle "git://github.com/tpope/vim-rails.git"
Bundle "git://github.com/vim-ruby/vim-ruby.git"
Bundle "git://github.com/tpope/vim-rake.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/tpope/vim-unimpaired.git"
Bundle "git://github.com/tyru/current-func-info.vim.git"
Bundle "git://github.com/tpope/vim-endwise.git"

" Bundle "git://github.com/dgryski/vim-godef"
" Bundle "git://github.com/nsf/gocode.git"
" Bundle "git://github.com/dgryski/vim-godef.git"
" Bundle "https://github.com/benmills/vim-golang-alternate"

filetype plugin indent on
