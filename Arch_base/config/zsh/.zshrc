while read file
do
  source "$ZDOTDIR/$file.zsh"
done <<-EOF
env
aliases
options
bindkeys
plugins
prompt
ssh
EOF
