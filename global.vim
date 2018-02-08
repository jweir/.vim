" Go
autocmd FileType go let g:SuperTabDefaultCompletionType = "context"
let g:ale_linters = {'go': ['gometalinter', 'gofmt']}

" Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" Elm
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" General Settings:
"
set guioptions= " disable scrollbars

setlocal spell spelllang=en_us
scriptencoding utf-8                    " UTF8 All day, every day
set directory=/tmp/                     " Set temporary directory (don't litter local dir with swp/tmp files)

" Set it to internal VIM Help
set keywordprg=:help

" Enable filetype-specific indenting, syntax, and plugins
filetype plugin indent on
set nocompatible
syntax on

set vb t_vb=                            " Disable visual bell
set autoread                            " Set to auto read when a file is changed from the outside
set nobackup                            " Do not create backup files when saving over existing files
set nowritebackup                       " A little paranoid, but disable the writebackup function as well
set noswapfile                          " No swap files when editing please

set completeopt=menuone,preview

" Ignore case on insert completion
set infercase

set matchpairs+=<:>                     " Also match angle brackets

" Mouse:

set mouse+=a
if &term =~ '^screen'
" tmux knows the extended mouse mode
  set ttymouse=xterm2
endif
set nomousefocus                        " Don't focus the window when the mouse pointer is moved.
set mousehide                           " Hide mouse pointer on insert mode.

" Text:

set whichwrap=h,l,~,[,]                 " Wrap with more keys
set nowrap                              " Disable line wrapping

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Round indent by a multiple of shiftwidth in indent mode
set shiftround

set nonumber                            " Disable line numbers
set numberwidth=3                       " Set line number column width

" WindowAndBufferManagement:

set splitbelow                          " Open new horizontal split windows below current
set splitright                          " Open new vertical split windows to the right
"set switchbuf=useopen,usetab,split      " Don't change my current buffer on quickfix


" WildMenuModeConfig:

set nowildmenu                         " Disable the wild menu
set wildmode=list:longest,full         " Better completion
set wildignore=.svn,CVS,.git           " Ignore VCS files
set wildignore+=*.o,*.a,*.so           " Ignore compiled binaries
set wildignore+=*.jpg,*.png,*.gif      " Ignore images
set wildignore+=*.pdf                  " Ignore PDF files
set wildignore+=*.pyc,*.pyo            " Ignore compiled Python files
set wildignore+=*.fam                  " Ignore compiled Falcon files


" StatusBar:

" Always show status bar
set laststatus=2


" Search:

" show the `best match so far' as search strings are typed:
set incsearch

" Don't highlight search result.
set nohlsearch

" Searches wrap around the end of the file
set wrapscan

" assume the /g flag on :s substitutions to replace all matches in a line:
" set gdefault

" Tags:

" Perform binary tag search (vs linear) in case tags aren't sorted to avoid
" missing tags
set notagbsearch

" Show extra information when using tags in insert mode
set showfulltag


" Window Heights:

set helpheight=10

" Formatting:
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set t_Co=256
set hidden

" misc

set enc=utf-8
set fillchars=vert:\|  
highlight VertSplit ctermfg=DarkGray cterm=none gui=none

syntax enable
" set background=light
silent! colorscheme true-monochrome-light
" silent! colorscheme solarized 

" Auto handle go imports
let g:go_fmt_command = "goimports"

let g:airline_left_sep=' '
let g:airline_right_sep=' '

" use Silver Searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" have ctrlp use the gitignore settings
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" OCAML Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

set clipboard=unnamed
