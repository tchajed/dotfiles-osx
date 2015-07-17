# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'bobthefish'
Plugin 'theme'
Plugin 'brew'

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

if status --is-login
    # Homebrew sbin
    set PATH /usr/local/sbin $PATH
    # Go binaries
    set PATH ~/go/bin /usr/local/opt/go/libexec/bin $PATH
    # Scripts
    set PATH ~/scripts $PATH
    # Commited scripts in dotfiles
    set PATH ~/.dotfiles/bin $PATH
    # Uncommitted scripts and compiled binaries
    set PATH ~/bin $PATH
    # Haskell
    set PATH ~/.cabal/bin ~/Library/Haskell/bin $PATH
    # Coq
    set PATH $PATH $COQBIN
end

alias sleep="gsleep"
alias realpath="grealpath"
alias readlink="greadlink"

# Automatically set environment variables using .setenv-* files.
# From github.com/jonhoo/configs
set nooverride PATH PWD
function -v PWD onchdir
	set dr $PWD
	while [ "$dr" != "/" ]
		for e in $dr/.setenv-*
			set envn (basename -- $e | sed 's/^\.setenv-//')
			if contains $envn $nooverride
				continue
			end

			if not test -s $e
				# setenv is empty
				# var value is file's dir
				set envv (readlink -e $dr)
			else if test -L $e; and test -d $e
				# setenv is symlink to directory
				# var value is target directory
				set envv (readlink -e $e)
			else
				# setenv is non-empty file
				# var value is file content
				set envv (cat $e)
			end

			if not contains $envn $wasset
				set wasset $wasset $envn
				setenv $envn $envv
			end
		end
		set dr (realpath -eL $dr/..)
	end
end

# Fix starting mvim from within tmux
if test (which reattach-to-user-namespace)
    set -l mvim_path (which mvim)
    alias mvim "reattach-to-user-namespace $mvim_path"
end
# complete mvim correctly
complete mvim --wraps vim

eval (python -m virtualfish)

source ~/.opam/opam-init/init.fish
