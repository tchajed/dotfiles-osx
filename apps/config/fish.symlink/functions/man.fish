function man
env \
    LESS_TERMCAP_mb=\e"[1;31m" \
    # bold
    LESS_TERMCAP_md=\e"[1;36m" \
    LESS_TERMCAP_me=\e"[0m" \
    LESS_TERMCAP_se=\e"[0m" \
    # standout
    LESS_TERMCAP_so=\e"[1;44;92m" \
    LESS_TERMCAP_ue=\e"[0m" \
    # underlining
    LESS_TERMCAP_us=\e"[1;32m" \
        man $argv
end
