" https://github.com/tpope/vim-pathogen
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories.
execute pathogen#infect()

"colors
syntax on
filetype plugin indent on

"spaces, tabs
set tabstop=4
set softtabstop=4
set expandtab

"ui
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch

"search
set incsearch
set hlsearch

"folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

