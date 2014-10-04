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

" ==================
" General
" ==================
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'The-NERD-tree'
Plugin 'sjl/gundo.vim'
Plugin 'skwp/YankRing.vim'
Plugin 'matchit.zip'
Plugin 'LargeFile'

" ==================
" Programming
" ==================

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

" --------------------
" Awesome IDE features
" --------------------
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
" snippet engine
Plugin 'SirVer/ultisnips'
" snippets
Plugin 'honza/vim-snippets'
" Persistent, separate NERDTree
Plugin 'jistr/vim-nerdtree-tabs'

" OCaml
" repl
Plugin 'jpalardy/vim-slime'

" GoLang
Plugin 'fatih/vim-go'
Plugin 'rhysd/vim-go-impl'

" C++ development
Plugin 'a.vim'
Plugin 'rhysd/vim-clang-format'

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

" Documentation interfaces
Plugin 'rizzatti/dash.vim'
Bundle 'Keithbsmiley/investigate.vim'

" --------------------
" Language syntax
" --------------------
" General Languages
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
Plugin 'nginx.vim'

" LaTeX
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

" Random languages
Plugin 'groovy.vim'
Plugin 'salinasv/vim-vhdl'
Plugin 'applescript.vim'
Plugin 'gnuplot.vim'

" ------------------
" Vim enhancements
" ------------------
Plugin 'godlygeek/tabular'
