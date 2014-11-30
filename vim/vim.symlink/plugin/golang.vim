let g:go_fmt_command = "goimports"

" Bindings for vim-go plugin commands

" Interfaces implemented by type under cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info
au FileType go nmap <Leader>i <Plug>(go-info)

" Install/test the current package
au FileType go nmap <leader>b <Plug>(go-install)
au FileType go nmap <leader>t <Plug>(go-test)

" Open the definition for the identifer under the cursor
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Rename an identifier
au FileType go nmap <Leader>e <Plug>(go-rename)
