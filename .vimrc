" Setup vim directories
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif

if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif

" Setup vim-plug
if !isdirectory($HOME."/.vim/autoload")
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Vi compatibility is a joke
set nocompatible

" Begin plugin initialization
call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://gitlab.com/EastAPOLO/apolo-vim.git'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer --system-libclang --system-boost --rust-completer'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-latex/vim-latex'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
Plug 'jiangmiao/auto-pairs'
Plug 'gu-fan/riv.vim'

call plug#end()

" Enable global indentation
filetype plugin indent on

" Set line numbers
set number

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" Set the number of columns for a TAB
set softtabstop=4

" On pressing tab, insert 4 spaces
set expandtab

" Move between open buffers
noremap <expr> <right> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bn\<cr>" : "\<right>")
nnoremap <expr> <left> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bp\<cr>" : "\<left>")

" Set colorscheme
set t_Co=256 termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme apolo

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

" Set statusbar
set laststatus=2

" Show commands being typed
set showcmd

" Set indentation for c languages
set cinoptions=g0,j1,:0,L0

" Set the default yanking/pasting register the system clipboard
set clipboard=unnamedplus

" Set hybrid line numbers
:set number relativenumber

" Toggle on and off hybrid line numbers in command and insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" On Windows use '.vim' instead of 'vimfiles'
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" Store undofile
set undofile undodir=~/.vim/undo/ 

" Enable code pasting
set pastetoggle=<F2>
 
" Set mappings
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set 80 character limit line
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Always open help files in a rightward vertical split 
autocmd FileType help,* wincmd L

" Open new file splits to the right and bottom 
set splitright
set splitbelow

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"

" YCM
let g:ycm_global_ycm_extra_conf ="~/.vim/ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path = '/usr/src/rust/src'

" Git Gutter
set updatetime=1000
