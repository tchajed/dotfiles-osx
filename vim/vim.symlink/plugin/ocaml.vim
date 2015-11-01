let g:opamshare = substitute(system('opam config var share'),'\n$','','''')

" ocp-indent, code reformatting
" execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"
set rtp^="/Users/tchajed/.opam/4.02.3/share/ocp-indent/vim"

" merlin, auto-completion
execute "set rtp+=" . g:opamshare . "/merlin/vim"
" loading merlin from a plugin file won't autoload the merlin plugin, so do so
" manually: http://irclog.whitequark.org/ocaml/2014-07-12.txt (go to 16:08)
runtime plugin/merlin.vim

let g:syntastic_ocaml_checkers = ['merlin']
