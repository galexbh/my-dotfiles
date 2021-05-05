set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source $HOME/.config/nvim/.vimrc

""Vim Plug
source $HOME/.config/nvim/vim-plug/plugins.vim
