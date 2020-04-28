set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=/usr/local/opt/fzf
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
Plugin 'https://github.com/rking/ag.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-rhubarb'

" VC
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/tpope/vim-git.git'
Plugin 'junegunn/gv.vim'

" Editting
Plugin 'git://github.com/godlygeek/tabular.git'
Plugin 'https://github.com/tpope/vim-abolish.git'
Plugin 'git://github.com/Townk/vim-autoclose.git'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/tpope/vim-unimpaired.git'
Plugin 'git://github.com/tpope/vim-endwise.git'

" Syntax
Plugin 'git://github.com/w0rp/ale'
Plugin 'git://github.com/lepture/vim-jinja'
Plugin 'git://github.com/jvirtanen/vim-octave'

" GO
Plugin 'https://github.com/fatih/vim-go' "asdf :heart: asdf
Plugin 'https://github.com/benmills/vim-golang-alternate'

" JS
Plugin 'git://github.com/pangloss/vim-javascript.git'

" Ruby and Rails
Plugin 'git://github.com/tpope/vim-haml.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/vim-ruby/vim-ruby.git'

" Elixir
Plugin 'elixir-editors/vim-elixir'
Plugin 'chase/vim-ansible-yaml'

" elm
Plugin 'elmcast/elm-vim'

" MISC
Plugin 'git://github.com/hashivim/vim-terraform'
Plugin 'JuliaEditorSupport/julia-vim'

call vundle#end()            " required
filetype plugin indent on    " required
