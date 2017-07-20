call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.py' } 

call plug#end()

filetype plugin indent on

" Set line numbers
set number

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" Sets the number of columns for a TAB
set softtabstop=4

" On pressing tab, insert 4 spaces
set expandtab
