function mkcd { mkdir $@ && cd $1 }

function setupgo() {
  export GOPATH="$PWD"
  export PATH="$GOPATH/bin:$PATH"
}
