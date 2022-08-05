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

call plug#begin('~/.local/share/nvim/plugged')
" A very fast, multi-syntax context-sensitive color name highlighter
Plug 'ap/vim-css-color'

" The ultimate snippet solution
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Lively Previewing LaTeX PDF Output 
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Better whitespace highlighting
Plug 'ntpeters/vim-better-whitespace'

" My personal dark theme
Plug 'EastAPOLO/apolo-vim'

" UndeadLeech's dark theme
Plug 'https://github.com/chrisduerr/vim-undead.git'

" Maintains consistent coding styles for any project
Plug 'editorconfig/editorconfig-vim'

" Smooth scrolling for Vim done right
Plug 'psliwka/vim-smoothie'

" Load extensions like VSCode and host language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" A collection of language packs
Plug 'sheerun/vim-polyglot'

" The undo history visualizer
Plug 'mbbill/undotree'
call plug#end()

" Set line numbers
set number

" Indentation
set tabstop=4 shiftwidth=4 softtabstop=0 expandtab

" Move between open buffers
noremap <expr> <right> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bn\<cr>" : "\<right>")
nnoremap <expr> <left> (len(filter(range(0, bufnr('$')), 'buflisted(v:val)')) > 1 ? ":bp\<cr>" : "\<left>")

" Set colorscheme
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme apolo

" Enable backspace behavior like in most text editors
set backspace=indent,eol,start

" Set lines of history vim has to remember
set history=1000

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

" Disable Background Color Erase so that color schemes
" render properly when inside 256-color tmux and GNU screen
if &term =~ '256color'
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
set pastetoggle=<F4>

" Set mappings
nnoremap <F2> :TagbarToggle<CR>
nnoremap <F3> :LLPStartPreview<CR>
nnoremap <F4> :UndotreeToggle<CR>
nnoremap <C-J> <C-W>+
nnoremap <C-K> <C-W>-
nnoremap <C-L> <C-W>>
nnoremap <C-H> <C-W><

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
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Set python3 executable
let g:python3_host_prog = '/usr/bin/python3'

" Disable ex-mode
nnoremap Q <NOP>

" Latex settings
let g:livepreview_previewer = 'zathura'
let g:tex_flavor='tex'

" Statusline
set statusline+=%f

" Work around resize bug
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" Install coc.nvim extensions
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-css', 'coc-clangd', 'coc-rls', 'coc-sh', 'coc-pyright']
