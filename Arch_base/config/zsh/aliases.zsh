##
## Aliases
##

alias v='nvim'
alias install='sudo pacman -S'
alias uninstall='sudo pacman -Rns'
alias orphans='sudo pacman -Rs $(pacman -Qtdq)'
alias update='sudo pacman -Syu'
alias clean='sudo paccache -ruk0'
alias deed-clean='sudo pacman -Scc'
alias myip='curl http://ipecho.net/plain; echo'
alias cls='clear'
alias cd..='cd ..'
alias mkfile='touch'
alias ls='exa -a --color=always --icons --group-directories-first'
alias ll='exa -la --color=always --icons --group-directories-first'
alias la='exa -la --git --icons --no-permissions --no-user --no-time --no-filesize'
alias tree='exa -a --color=always --icons --group-directories-first -T'
alias cat='bat --color always --plain'
alias mobile="scrcpy"

##
## Git
##

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gf='git fetch'
alias gp='git push'
alias grb='git rebase'
alias gst='git status'
alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias ggpull='git pull origin "$(git_current_branch)"'
alias ggpush='git push origin "$(git_current_branch)"'
alias gloga='git log --oneline --decorate --graph --all'
