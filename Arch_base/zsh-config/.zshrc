# Path to your oh-my-zsh installation.
export ZSH="/home/galexbh/.oh-my-zsh"

# -- ZSH_THEME --

#ZSH_THEME="robbyrussell"

# -- Plugins --

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# -- User configuration --

# aliases

alias zshconfig="nvim ~/.zshrc"
alias startconfig="nvim ~/.config/starship.toml"
alias install="sudo pacman -S"
alias uninstall="sudo pacman -Rns"
alias orphans="sudo pacman -Rs $(pacman -Qtdq)"
alias update="sudo pacman -Syu"
alias clean="sudo paccache -ruk0"
alias deed-clean="sudo pacman -Scc"
alias myip="curl http://ipecho.net/plain; echo"
alias solved="sudo nvim /usr/lib/modprobe.d/r8168.conf"

alias zathup="nohup zathura"
alias vscode="code ."
alias cls="clear"
alias cd..="cd .."
alias mkfile="touch"
alias ls="exa -a --color=always --icons --group-directories-first"
alias ll="exa -la --color=always --icons --group-directories-first"
alias la="exa -la --git --icons --no-permissions --no-user --no-time --no-filesize"
alias tree="exa -a --color=always --icons --group-directories-first -T"
alias calc="bc"
alias process="ps fax"
alias disk="df -h"
alias lzd="lazydocker"
alias lzg="lazygit"
alias mobile="scrcpy"

# lua language

alias luamake=/home/galexbh/.config/nvim/ls/lua-language-server/3rd/luamake/luamake

# FzF + ripgrep
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Node Version Manager
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# Golang
export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOPATH:$GOBIN
export GO111MODULE=on

eval "$(starship init zsh)"
