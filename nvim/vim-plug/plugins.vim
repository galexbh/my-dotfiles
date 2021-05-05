" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  "Temas
  Plug 'ayu-theme/ayu-vim'
  Plug 'drewtempelmeyer/palenight.vim'  
  "IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'preservim/nerdcommenter'
  Plug 'Yggdroot/indentLine'
  Plug 'terryma/vim-multiple-cursors'
  
  " status bar
  Plug 'maximbaz/lightline-ale'
  Plug 'itchyny/lightline.vim'

  " Iconos
  Plug 'ryanoasis/vim-devicons'

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " File Explorer
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs' 
  
  " Tmux navigator
  Plug 'christoomey/vim-tmux-navigator'

  " AutoCompletado del Codigo
  "Plug 'neoclide/coc.nvim'
  
call plug#end()

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'palenight',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" IA Autocomplete 
set rtp+=/home/galexbh/Documentos/Github/tabnine-vim

" config theme
set t_Co=256
set termguicolors     " enable true colors support
let ayucolor="mirage"   " for dark version of theme
colorscheme ayu

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" Leader
let mapleader=" "

""" Maps """

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
