" Setup nvim config dir
if !isdirectory($HOME."/.config/nvim")
    call mkdir($HOME."/.config/nvim", "", 0770)
endif

" Setup vim-plug for nvim
if !isdirectory($HOME."/.local/share/nvim/site")
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Vi compatibility is a joke
set nocompatible

" Begin plugin initialization
call plug#begin('~/.local/share/nvim/plugged')
Plug 'ap/vim-css-color'
Plug 'tpope/vim-repeat'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://gitlab.com/EastAPOLO/apolo-vim.git'
Plug 'rakr/vim-one'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
call plug#end()

" Deoplete lazy loading 
autocmd InsertEnter * call deoplete#enable()

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
colorscheme one
set background=light

" Enable backspace behavior like in most text editors
set backspace=indent,eol,start

" Set lines of history vim has to remember
set history=500

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
set cinoptions=g0,j1,L0,l1

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

" Store undofile
set undofile undodir=~/.local/share/nvim/undo/

" Enable code pasting
set pastetoggle=<F2>
 
" Set mappings
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :LLPStartPreview<CR>
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

" Open new file splits to the right and bottom 
set splitright
set splitbelow

" Copy more lines
set viminfo='100,<1000,s100,h

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" Git Gutter
set updatetime=1000

" Set lightline colorscheme
let g:lightline = {'colorscheme': 'PaperColor'}

" Set python3 executable
let g:python3_host_prog = '/usr/bin/python3'

" Disable ex-mode
nnoremap Q <NOP>

" Set pdf viewer for latex-preview
let g:livepreview_previewer = 'zathura'

" Language servers
let g:LanguageClient_serverCommands = {'cpp': ['clangd']}
