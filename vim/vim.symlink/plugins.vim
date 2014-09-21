" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ------------------
" General
" ------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'The-NERD-tree'
Plugin 'sjl/gundo.vim'
Plugin 'matchit.zip'

" ------------------
" Programming
" ------------------

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

" Primarily C++ development
Plugin 'Valloric/YouCompleteMe'
Plugin 'a.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'majutsushi/tagbar' " also useful for Go

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

" Language syntax
" General Languages
Plugin 'fatih/vim-go'
Plugin 'JuliaLang/julia-vim'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'VimClojure'
Plugin 'wting/rust.vim'

" Web-related
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'

" Random languages
Plugin 'groovy.vim'
Plugin 'salinasv/vim-vhdl'
Plugin 'applescript.vim'
Plugin 'gnuplot.vim'
