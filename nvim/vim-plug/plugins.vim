""" auto-install vim-plug
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
Plug 'tomasr/molokai'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'

" Barra de estado - Airline
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Temas Airline

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

" Buscador de Archivos
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Auto Formateo
Plug 'chiel92/vim-autoformat'

" AutoCompletado del Codigo
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" JSDOC
Plug 'heavenshell/vim-jsdoc', {
			\ 'for': ['javascript', 'javascript.jsx','typescript'],
			\ 'do': 'make install'
			\}

call plug#end()

" Configuracion de Airline
let g:airline#extensions#tabline#enabled = 1 " Mostrar buffers abiertos
let g:airline#extensions#tablines#fnamemod = ':t' " Mostrar nombre del archivo
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'

"IA Autocompletado
"set rtp+=/home/galexbh/Documentos/Github/tabnine-vim

" config theme
set t_Co=256
set termguicolors     " enable true colors support
"let ayucolor="mirage"   " for dark version of theme
colorscheme molokai

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" nerdcommenter
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Auto Formatear al guardar
au BufWrite * :Autoformat

" Leader
let mapleader=" "

""" Maps """

nmap <silent><Leader>s <Plug>(easymotion-s2)
nmap <silent><Leader>nt :NERDTreeFind<CR>

nmap <silent><Leader>w :w<CR>
nmap <silent><Leader>q :q<CR>

nmap <silent><leader>f :Files<CR>
nmap <silent><leader>b :Buffers<CR>
nmap <silent><leader>l :bd<CR>
nmap <leader>i :PlugInstall<CR>
nmap <leader>cls :PlugClean<CR>
nmap <silent><F2> :JsDoc<CR>
nmap <silent><leader>ft gg=G<CR>
