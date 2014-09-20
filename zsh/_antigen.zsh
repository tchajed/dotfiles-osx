source ~/.dotfiles/vendor/antigen/antigen.zsh


# Disable ZSH ls colors, which doesn't support OS X or gls.
DISABLE_LS_COLORS=true
DISABLE_AUTO_UPDATE=true

# Load the oh-my-zsh library
antigen use oh-my-zsh

antigen bundle git
antigen bundle brew
antigen bundle autojump
antigen bundle tmux

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme crunch

antigen apply

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
