set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'davidhalter/jedi-vim'
Plugin 'w0rp/ale'
Plugin 'sbdchd/neoformat'
Plugin 'morhetz/gruvbox'
Plugin 'ludovicchabant/vim-gutentags'

" Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
