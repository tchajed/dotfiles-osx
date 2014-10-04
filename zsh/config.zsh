eval `gdircolors $HOME/.dotfiles/vendor/dircolors-solarized/dircolors.ansi-dark`
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP # don't send SIGHUP to background tasks on exit
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

setopt extendedglob

# automatically report time taken for commands that ran longer than $REPORTTIME
# seconds
REPORTTIME=5

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
