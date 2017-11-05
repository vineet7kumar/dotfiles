set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'
Plug 'sbdchd/neoformat'
Plug 'morhetz/gruvbox'
Plug 'ludovicchabant/vim-gutentags'

" All of your Plugins must be added before the following line

call plug#end()            " required

" color
set t_Co=256
syntax enable
set background=dark
colorscheme gruvbox

" Formatting
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set textwidth=79
set formatoptions+=t

" UI config
let mapleader=","
map <Space> <leader>
set nu
set noshowmode
set timeout timeoutlen=1000 ttimeoutlen=10
set wildmenu
set lazyredraw
set showmatch
set colorcolumn=80
set mouse=a
set belloff=esc

" GUI settings
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guifont=Hack\ 12

" Tags optimizations
set tags=tags,./tags;$HOME

" Searching
set incsearch
set hlsearch
nnoremap <leader>/ :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <leader>z za
set foldmethod=indent

" Navigation
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>h <C-W>h
nnoremap <leader>l <C-W>l
nnoremap <C-L> gt
nnoremap <C-H> gT

" File handling
nnoremap <leader>p :CtrlPBuffer<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

" Code browsing
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>to :TagbarOpenAutoClose<CR>

" CtrlP
" let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Load vim-airline at session start	
set laststatus=2	

" Settings for python-mode
let g:pymode_python = 'python3'
