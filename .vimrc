" https://github.com/tpope/vim-pathogen
" Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes
" it super easy to install plugins and runtime files in their own private
" directories.
execute pathogen#infect()

" Turns on "detection", "plugin" and "indent" at once
" Detection: Each time a new or existing file is edited, Vim will try to recognize the type of the file and set the 'filetype' option. This will trigger the FileType event, which can be used to set the syntax highlighting, set options, etc.
" Plugin: This actually loads the file "ftplugin.vim" in 'runtimepath'. The result is that when a file is edited its plugin file is loaded (if there is one for the detected filetype).
" Indent: This actually loads the file "indent.vim" in 'runtimepath'. The result is that when a file is edited its indent file is loaded (if there is one for the detected filetype). indent-expression
filetype plugin indent on

"""""""""""""""""""""
" Colors
"""""""""""""""""""""
" Turn on color syntax highlighting
syntax on

" Color Scheme
" colorscheme 256_noir
" colorscheme molokai

set backspace=indent,eol,start

"""""""""""""""""""""
"spaces, tabs
"""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Use spaces instead of tabs
set expandtab
" Ensures that tabs are only used for indentation, while spaces are used everywhere else
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
map <F9> :set paste<CR>
map <F10> :set nopaste<CR>
imap <F9> <C-O>:set paste<CR>
imap <F10> <nop>
set pastetoggle=<F10>
