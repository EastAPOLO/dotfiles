" Vi compatibility is a joke
set nocompatible

" Begin plugin initialization
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'EastAPOLO/vim-forell-apolo'

call plug#end()

" Enable global indentation
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

" Move between open buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" Set airline theme
set laststatus=2
let g:airline_theme = 'forell'

" Remove powerline arrows
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts = 1

" Make powerline text more compact
let g:airline_section_z = airline#section#create(['%l/%L %c'])

" Set colorscheme
set termguicolors
colorscheme forell

" Display buffers at the top
let g:airline#extensions#tabline#enabled = 1

" Enable backspace behavior like on most text editors
set backspace=indent,eol,start

