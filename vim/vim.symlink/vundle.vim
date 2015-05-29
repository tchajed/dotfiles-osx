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
Plugin 'wesQ3/vim-windowswap'
Plugin 'sjl/gundo.vim'
Plugin 'matchit.zip'
Plugin 'LargeFile'
Plugin 'danro/rename.vim'
Plugin 'embear/vim-localvimrc'

" Search
Plugin 'mileszs/ack.vim'
Plugin 'nerdtree-ack'

" ==================
" Programming
" ==================

Plugin 'kien/ctrlp.vim'
" make ctrlp matching better and faster
Plugin 'JazzCore/ctrlp-cmatcher'
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
Plugin 'Keithbsmiley/investigate.vim'

" Coq IDE
Plugin 'tchajed/coquille'

" Haskell
Plugin 'lukerandall/haskellmode-vim'
Plugin 'bitc/vim-hdevtools'
Plugin 'eagletmt/neco-ghc'
Plugin 'raichoo/haskell-vim'
Plugin 'Twinside/vim-haskellConceal'

" --------------------
" Language syntax
" --------------------
" General Languages
Plugin 'JuliaLang/julia-vim'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'VimClojure'
Plugin 'wting/rust.vim'
Plugin 'vim-scripts/Vim-R-plugin'

" Web-related
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'nginx.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'sql.vim'

" LaTeX
Plugin 'gerw/vim-latex-suite'

" Random languages
Plugin 'salinasv/vim-vhdl'
Plugin 'applescript.vim'
Plugin 'gnuplot.vim'
Plugin 'cespare/vim-toml'
Plugin 'dag/vim-fish'

" ------------------
" Vim enhancements
" ------------------
Plugin 'godlygeek/tabular'
