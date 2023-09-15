##
## PATH & ENV Var
##

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Bun
export PATH="$HOME/.bun/bin:$PATH"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Python Poetry
export PATH="$HOME/.local/bin:$PATH"

# Golang
export GOBIN="$HOME/go/bin"
export PATH="$PATH:$GOPATH:$GOBIN"
export GO111MODULE=on

# Flutter
export PATH="$PATH:$HOME/flutter/bin"

# pip
export PATH=$PATH:/usr/local/bin

export PATH=$PATH:/usr/bin/rootlesskit

# prevents duplicates PATH
typeset -U PATH
