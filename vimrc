let g:inkpot_black_background = 1

colorscheme inkpot
filetype on
syntax on

filetype plugin on

set wrap
set nocompatible
set nobackup
set backspace=indent,eol,start
set history=1000
set ruler
set showcmd
set ttyfast

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4

set ignorecase
set incsearch
set nohlsearch

set foldenable

autocmd FileType haml setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 textwidth=79
autocmd FileType sh   setlocal expandtab
