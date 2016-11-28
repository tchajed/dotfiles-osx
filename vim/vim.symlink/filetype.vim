au BufRead,BufNewFile /usr/local/etc/nginx/*.conf if &ft == '' | setfiletype nginx | endif
au! BufRead,BufNewFile *.scrbl setfiletype scribble
