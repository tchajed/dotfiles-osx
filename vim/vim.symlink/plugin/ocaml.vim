" ocp-indent, code reformatting
autocmd FileType ocaml source ~/.opam/system/share/typerex/ocp-indent/ocp-indent.vim

" merlin, auto-completion
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
