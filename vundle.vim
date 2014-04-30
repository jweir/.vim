set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundle.vim'

" Bundles:
Plugin 'a.vim'
Plugin 'https://github.com/fatih/vim-go'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'ctrlp.vim'
Plugin 'git://github.com/vim-scripts/ZoomWin.git'
Plugin 'nginx.vim'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'https://github.com/tpope/vim-abolish.git'

Plugin 'git://github.com/kchmck/vim-coffee-script.git'
Plugin 'git://github.com/Lokaltog/vim-distinguished.git'
Plugin 'git://github.com/Townk/vim-autoclose.git'
" Plugin 'git://github.com/cespare/vim-bclose.git'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'git://github.com/ervandew/supertab.git'
Plugin 'git://github.com/godlygeek/tabular.git'

Plugin 'git://github.com/pangloss/vim-javascript.git'

Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/scrooloose/syntastic.git'

Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/tpope/vim-git.git'

Plugin 'git://github.com/tpope/vim-haml.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/vim-ruby/vim-ruby.git'
" Plugin 'git://github.com/tpope/vim-rake.git'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/tpope/vim-unimpaired.git'
Plugin 'git://github.com/tyru/current-func-info.vim.git'
Plugin 'git://github.com/tpope/vim-endwise.git'

" Plugin 'git://github.com/dgryski/vim-godef'
" Plugin 'git://github.com/nsf/gocode.git'
" Plugin 'git://github.com/dgryski/vim-godef.git'
" Plugin 'https://github.com/benmills/vim-golang-alternate'

call vundle#end()            " required
filetype plugin indent on    " required
