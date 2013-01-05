set nocompatible

" Disable some plugins temporarily
let g:pathogen_disabled = []

call add(g:pathogen_disabled, 'syntastic') " Overzealous w/ errors
call add(g:pathogen_disabled, 'command-t') " Trying out native ctrl-p plugin

call pathogen#infect()      " Start pathogen plugin
call pathogen#helptags()    " Command-t needs it

syntax enable                " Enables syntax highlighting 
filetype plugin indent on    " Recognize filetype
set t_Co=16                 " For colorschemes:
set background=dark
colorscheme solarized

" Powerline Config
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2

" Interface
set number        " Line numbers
set nowrap        " Turn off line wrapping
set ruler         " Linenum, colnum displayes
set cursorline    " Shows current line highlighted
set showcmd       " Show incompletecommand
set showmode      " Show mode I'm in
set showmatch     " Show matching bracets when text indicator is over them

" Buffer management
set hidden        " Handle multiple buffers better.
set splitright    " vs splits new window to east

" Bash-like completion
set wildmenu                                     " Status line for vim
set wildmode=list:longest                        " Complete files like a shell
set wildignore+=*.a,*.o,*.class,*.pyc            " Ignore compiled files
set wildignore+=*.jar,*.zip                      " Ignore compressed files
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png    " Ignore image files
set wildignore+=.DS_Store,.git,.hg,.svn          " Ignore hidden files and folders
set wildignore+=*~,*.swp,*.tmp,*.bak             " Ignore backup files

" Movement
set backspace=indent,eol,start    " Intuitive backspacing.
set scrolloff=10                  " Show 10 lines of context around the cursor.

" Searching
set ignorecase    " Ignore case when searching
set smartcase     " Igore case when lowercase is given
set hlsearch      " Highlight search things
set incsearch     " Make search act like search in modern browsers

" Indenting & Tab Style
set smartindent    " Smart indent when inserting new line
set autoindent     " Copy indent from above line
set smarttab       " Activate smart tabs
set expandtab      " Insert space characters whenever the tab key is pressed
set tabstop=4      " Control the number of space characters that will be inserted when the tab key is pressed
set shiftwidth=4   " Change the number of space characters inserted for indentation

" Re map leader
let mapleader=","
let g:mapleader=','
let g:maplocalleader=','

""" Personal bindings
" Center screen when searching
map N Nzz
map n nzz

""" Remapping Symbols
" Auto complete and intent paired symbols on newline
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

""" Remapping ShiftKeys
noremap U :redo<CR>
noremap H :nohl<CR>
noremap Y y$
nmap K 0D

""" Mapping CtrlKeys
" Better movement between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Select All
map <C-a> ggVG 

" Copy/paste from system clipboard
nmap <C-v> "+p
vmap <C-v> "+p
nmap <C-c> "+y
vmap <C-c> "+y

" Zencoding Helpers
imap <C-e> <C-y>,
imap <C-q> <C-y>N
imap <C-w> <C-y>n

""" Mapping Leader Keys
nmap <Leader>c :TComment<CR>
vmap <Leader>c :TCommentBlock<CR>
nmap <Leader>e :e $MYVIMRC<CR>

""" Mapping FKeys
nmap <F2> :w<CR>
imap <F2> <Esc>:w<CR>
vmap <F2> <Esc>:w<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>

""" Command mode mappings
cmap w!! w !sudo tee % >/dev/null

""" Handle other filetypes
autocmd BufNewFile,BufRead *.less set ft=css
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.scaml set ft=haml
