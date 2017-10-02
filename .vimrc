" Vi compatibility is a joke
set nocompatible

" Begin plugin initialization
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang --system-boost' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'EastAPOLO/vim-apolo'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'rhysd/vim-clang-format'

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
let g:airline_theme = 'apolo'

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
colorscheme apolo 

" Display buffers at the top
let g:airline#extensions#tabline#enabled = 1

" Enable backspace behavior like in most text editors
set backspace=indent,eol,start

" Enable C-family completion for YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Disable safe loading check of .ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0 

" Enable Rust completion for YCM
let g:ycm_rust_src_path = '/usr/src/rust/src'
