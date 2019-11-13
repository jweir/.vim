" Map Leader: Reset from \ to ,
let mapleader = ","

" Extends '%' match function to if/else, </>, etc. "
:runtime macros/matchit.vim

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit 
nmap tN :tabnew<CR>

nmap cp :let @+ = expand("%")<CR>

nmap <leader><leader> :TagbarToggle<CR>
let g:tagbar_left = 1

" ExitInsertMode: Alternative keybinding
imap jk <Esc>

" Highlighting
map <C-n> :nohlsearch<CR>

" Replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Search for word under cursor
:nnoremap <Leader>a :Ag <C-r><C-w><CR>

:nnoremap <leader>f :FZF<CR>
:nnoremap <leader>b :Buffers<CR>

" Show File
nmap <Leader>r :NERDTreeFind<CR>
