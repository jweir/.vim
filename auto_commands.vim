autocmd BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit
autocmd BufRead,BufNewFile {*.clj}                                         set ft=clojure
autocmd BufRead,BufNewFile {*.json}                                        set ft=javascript
" Clear trailing whitespace
autocmd BufWritePre        {*.coffee,*.js,*.rb}                            :%s/\s\+$//e

" Autoclose adjustments
autocmd FileType ruby,javascript
      \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "<")

