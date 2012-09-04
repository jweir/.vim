" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit 
nmap tN :tabnew<CR>

" NERDTree: Open with F2
nmap <F2> :NERDTreeToggle<CR>

" AckVim: <leader>f to search
map <leader>f :Ack<Space>
noremap <Leader>a :Ack <cword><cr>

nmap <leader><leader> :TagbarToggle<CR>
let g:tagbar_left = 1

" ExitInsertMode: Alternative keybinding
imap jj <Esc>

" Highlighting
map <C-n> :nohlsearch<CR>

" Replace word under cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
