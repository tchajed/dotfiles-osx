# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# topdf converts to pdf, no point in completing existing PDFs
compctl -g "^*.pdf" topdf
