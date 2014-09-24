# Depends on _env.sh variables.
export PATH="./bin:$GOBIN:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Go binaries (eg, godoc)
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Uncomitted scripts
export PATH="$HOME/scripts:$PATH"
