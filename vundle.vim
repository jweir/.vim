set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Bundles:

" Interface
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/vim-scripts/ZoomWin.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'https://github.com/majutsushi/tagbar'

" Navigation & Search
Plugin 'ctrlp.vim'
Plugin 'https://github.com/rking/ag.vim'

" VC
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/tpope/vim-git.git'

" Editting
Plugin 'git://github.com/ervandew/supertab.git'
Plugin 'git://github.com/godlygeek/tabular.git'
Plugin 'https://github.com/tpope/vim-abolish.git'
Plugin 'git://github.com/Townk/vim-autoclose.git'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/tpope/vim-unimpaired.git'
Plugin 'git://github.com/tpope/vim-endwise.git'

" Syntax
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/lepture/vim-jinja'

" GO
Plugin 'https://github.com/fatih/vim-go'
Plugin 'https://github.com/benmills/vim-golang-alternate'

" JS
Plugin 'git://github.com/kchmck/vim-coffee-script.git'
Plugin 'git://github.com/pangloss/vim-javascript.git'

" Typescript
Plugin 'https://github.com/Shougo/vimproc.vim' "need to run make from its directory
Plugin 'https://github.com/Quramy/tsuquyomi.git'
Plugin 'https://github.com/leafgarland/typescript-vim'
Plugin 'https://github.com/jason0x43/vim-js-indent'

" Ruby and Rails
Plugin 'git://github.com/tpope/vim-haml.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/vim-ruby/vim-ruby.git'

" Elixir
Plugin 'git://github.com/elixir-lang/vim-elixir'
Plugin 'chase/vim-ansible-yaml'

" elm
Plugin 'elmcast/elm-vim'

" MISC
Plugin 'git://github.com/markcornick/vim-bats.git'
Plugin 'git://github.com/bkad/vim-terraform'
call vundle#end()            " required
filetype plugin indent on    " required


" OCAML Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
