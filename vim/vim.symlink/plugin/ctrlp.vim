let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Use JazzCore/ctrlp-cmatcher for matching
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
