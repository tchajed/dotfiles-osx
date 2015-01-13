# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# set fish_plugins autojump bundler
source /usr/local/etc/autojump.fish

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Homebrew sbin
set PATH /usr/local/sbin $PATH
# Go binaries
set PATH ~/go/bin /usr/local/opt/go/libexec/bin $PATH
# Scripts
set PATH ~/scripts $PATH

# Load oh-my-fish configuration.
source $fish_path/oh-my-fish.fish
