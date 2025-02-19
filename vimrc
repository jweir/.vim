call plug#begin()

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'bling/vim-airline'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'
  Plug 'tpope/vim-rhubarb'
  Plug 'rking/ag.vim'
  Plug 'unisonweb/unison', { 'branch': 'trunk', 'rtp': 'editor-support/vim' }
  Plug 'preservim/tagbar'

  " Editting
  Plug 'dense-analysis/ale'
  Plug 'godlygeek/tabular'
  Plug 'tpope/vim-abolish'
  Plug 'Townk/vim-autoclose'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-endwise'

  " JS
  Plug 'pangloss/vim-javascript'

  Plug 'cakebaker/scss-syntax.vim'
  " Go
  Plug 'fatih/vim-go'

  " Ruby and Rails
  Plug 'tpope/vim-haml'
  Plug 'tpope/vim-rails'
  Plug 'vim-ruby/vim-ruby'

  " LLM Code assistance
  Plug 'ggml-org/llama.vim'
call plug#end()

let mapleader = ","

set clipboard=unnamed
set mouse+=a
set nomousefocus                        " Don't focus the window when the mouse pointer is moved.
set mousehide                           " Hide mouse pointer on insert mode.

if &term =~ '^screen'
" tmux knows the extended mouse mode
  set ttymouse=xterm2
endif

set enc=utf-8
scriptencoding utf-8                    " UTF8 All day, every day
set fillchars=vert:\|

syntax on
set background=dark
silent! colorscheme quiet " true-monochrome
hi Comment ctermfg=150
highlight VertSplit ctermfg=DarkGray cterm=none gui=none

set directory=/tmp/                     " Set temporary directory (don't litter local dir with swp/tmp files)
set noswapfile                          " No swap files when editing please
set nowrap                              " Disable line wrapping

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_altv = &spl
let g:netrw_winsize = 20


" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set splitbelow                          " Open new horizontal split windows below current
set splitright                          " Open new vertical split windows to the right

set shiftround " Round indent by a multiple of shiftwidth in indent mode

set nonumber                            " Disable line numbers

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Keybindings
nnoremap <leader>f :FZF<CR>
nmap <Leader>rr :NERDTreeFind<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit
nmap tN :tabnew<CR>

"
" ALE
"

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'go': ['gofmt', 'goimports'],
\ 'html': ['prettier'],
\ 'javascript': ['eslint'],
\ 'json': ['prettier'],
\ 'markdown': ['prettier'],
\ 'ruby': ['rubocop'],
\ 'scss': ['stylelint'],
\ 'sass': ['stylelint'],
\ 'vue': ['prettier'],
\ 'xml': ['xmllint'],
\ 'yml': ['prettier'],
\}

let g:ale_linters = {
\ 'css': ['stylelint'],
\ 'gitcommit': ['gitlint'],
\ 'go': ['gometalinter', 'gofmt', 'golangci_lint'],
\ 'haml': ['hamllint'],
\ 'html': ['stylelint'],
\ 'javascript': ['eslint', 'prettier'],
\ 'json': ['jsonlint'],
\ 'ruby': ['rubocop'],
\ 'scss': ['stylelint'],
\ 'sass': ['stylelint'],
\ 'xml': ['xmllint'],
\}

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_set_highlights = 1
highlight ALEError ctermbg=NONE ctermfg=red
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarning ctermbg=NONE ctermfg=yellow
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" Custom Command
command! Scratch new | setlocal bt=nofile bh=wipe nobl noswapfile nu

"
" CoC
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>as <Plug>(coc-codeaction-selected)
nmap <leader>as <Plug>(coc-codeaction-selected)

xmap <leader>al <Plug>(coc-codeaction-line)
nmap <leader>al <Plug>(coc-codeaction-line)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line. (not supported in vim)
" nmap <leader>cl  <Plug>(coc-codelens-action)


" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
