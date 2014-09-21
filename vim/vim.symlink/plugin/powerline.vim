let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set laststatus=2

if has('gui_running')
	set guifont=Inconsolata\ for\ Powerline:h13
else
	set term=xterm-256color
endif
