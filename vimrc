set nocompatible

" Disable some plugins temporarily
let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'pluginname')

call pathogen#infect()      " Start pathogen plugin
call pathogen#helptags()    " Command-t needs it

syntax enable                " Enables syntax highlighting 
filetype plugin indent on    " Recognize filetype
set t_Co=256                 " For colorschemes
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
set showcmd       " Show incomplete commands
set showmode      " Show mode I'm in
set showmatch     " Show matching bracets when text indicator is over them

" Buffer management
set hidden        " Handle multiple buffers better.
set splitright    " vs splits new window to east

" Bash-like completion
set wildmenu                                     " Status line for vim
set wildmode=list:longest                        " Complete files like a shell
set wildignore+=*.a,*.o,*.class,*.pyc,*.scssc    " Ignore compiled files
set wildignore+=*.jar,*.zip                      " Ignore compressed files
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png    " Ignore image files
set wildignore+=.DS_Store,.git,.hg,.svn          " Ignore hidden files and folders
set wildignore+=*~,*.swp,*.tmp,*.bak             " Ignore backup files
set wildignore+=node_modules,npm-debug.log       " Ignore some Javascript files

" Movement
set backspace=indent,eol,start    " Intuitive backspacing.
set scrolloff=10                  " Show 10 lines of context around the cursor.

" Searching
set ignorecase    " Ignore case when searching
set smartcase     " Ignore case when lowercase is given
set hlsearch      " Highlight search things
set incsearch     " Make search act like search in modern browsers

" Indenting & Tab Style
set smartindent    " Smart indent when inserting new line
set autoindent     " Copy indent from above line
set smarttab       " Activate smart tabs
set expandtab      " Insert space characters whenever the tab key is pressed
set tabstop=2      " Control the number of space characters that will be inserted when the tab key is pressed
set shiftwidth=2   " Change the number of space characters inserted for indentation

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
" Reload vimrc
nmap <C-r> :source ~/.vimrc<CR>

" Better movement between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Better buffer movement
map <C-p> :bp<CR>
map <C-n> :bn<CR>
map <C-d> :bd<CR>
map <Leader>b :ls<CR>:b<space>

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
vmap <Leader>c :TComment<CR>
nmap <Leader>e :e $MYVIMRC<CR>

""" Mapping FKeys
nmap <F2> <Esc>:w<CR>
imap <F2> <Esc>:w<CR>
vmap <F2> <Esc>:w<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>

""" Command mode mappings
cmap w!! w !sudo tee % >/dev/null

"Surround Reminders
" cs<1><2> "change surrounding <1> to <2>"
" ds<1> "delete surrounding <1>"
" ys<to><1> "surround text object <to> with <1>"

""" Handle other filetypes
autocmd BufNewFile,BufRead *.less set ft=css
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.scaml set ft=haml
