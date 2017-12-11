" Vi compatibility is a joke
set nocompatible

" Begin plugin initialization
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

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
noremap <expr> <right> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bn\<cr>" : "\<right>")
nnoremap <expr> <left> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bp\<cr>" : "\<left>")

"Set colorscheme
set termguicolors
colorscheme base16-default-dark


" Enable backspace behavior like in most text editors
set backspace=indent,eol,start

" Set lines of history vim has to remember
set history=500

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Set Unix as the standard file type
set ffs=unix,dos,mac

" Enable the autocompletion menu in command mode (wild menu)
set wildmenu

" Highlight current line
set cursorline

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Search as characters are entered in command mode
set incsearch

" Highlight search results in command mode
set hlsearch

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://sunaku.github.io/vim-256color-bce.html
    set t_ut=
endif

