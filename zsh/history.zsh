# Save near unlimited history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_VERIFY # for history substitution (!^, !*, etc), substitute w/o executing
setopt SHARE_HISTORY # share history between sessions ???

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_REDUCE_BLANKS
