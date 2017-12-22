" https://github.com/tpope/vim-pathogen
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories.
execute pathogen#infect()

filetype plugin indent on

"""""""""""""""""""""
"colors
"""""""""""""""""""""
syntax on

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

"""""""""""""""""""""
"spaces, tabs
"""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""
"ui
"""""""""""""""""""""
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch

"""""""""""""""""""""
"search
"""""""""""""""""""""
set incsearch
set hlsearch

"""""""""""""""""""""
"folding
"""""""""""""""""""""
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

"""""""""""""""""""""
" files
"""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""
" status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
hi StatusLine                  ctermfg=White     ctermbg=DarkBlue     cterm=NONE
hi StatusLineNC                ctermfg=2     ctermbg=8     cterm=NONE
" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ %{fugitive#statusline()}\ \ Line:\ %l\ \ Column:\ %c

""""""""""""""""""""""""""""""
" mapping
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-e> :MRU<CR>
