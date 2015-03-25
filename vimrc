set nocompatible

" Disable some plugins temporarily
let g:pathogen_disabled = []
" call add(g:pathogen_disabled, 'pluginname')
" call add(g:pathogen_disabled, 'vim-supertab')
call add(g:pathogen_disabled, 'YouCompleteMe')
call add(g:pathogen_disabled, 'vim-powerline')
call add(g:pathogen_disabled, 'vim-eunuch')

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

" Clipboard
set clipboard=unnamed

" Interface
set number        " Line numbers
set nowrap        " Turn off line wrapping
set ruler         " Linenum, colnum displays
set cursorline    " Shows current line highlighted
set showcmd       " Show incomplete commands
set showmode      " Show mode I'm in
set showmatch     " Show matching bracets when text indicator is over them

" Buffer management
set hidden      " Handle multiple buffers better.
set splitright  " vs splits new window to east
set autowrite   " Save files when switching buffer

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

" Better buffer movement
noremap <C-p> :bp<CR>
noremap <C-n> :bn<CR>
noremap <C-d> :bp\|bd # <CR>
noremap <Leader>b :CtrlPBuffer<CR>
noremap <Leader>o :only<CR>

" Copy/paste from system clipboard
nmap <C-v> "+p
vmap <C-v> "+p
nmap <C-c> "+y
vmap <C-c> "+y

""" Mapping Leader Keys
" Comment
nmap <Leader>c :TComment<CR>
vmap <Leader>c :TComment<CR>

" Open file finder
nmap <Leader>t :CtrlP<CR>

" Jump to cucumber step definition
nmap <Leader>d <C-]>

" Edit vimrc
nmap <Leader>e :e $MYVIMRC<CR>

" Reload vimrc
nmap <Leader>r :source ~/.vimrc<CR>

" Hi-light trailing spaces
nmap <leader>s :%s/\s\+$//<CR>

" Open related files in rails
nmap <leader>C :Econtroller<CR>
nmap <leader>M :Emodel<CR>
nmap <leader>T :Eunittest<CR>

""" Mapping FKeys
nmap <F1> <Esc>:w<CR>
nmap <F2> <Esc>:w<CR>
imap <F2> <Esc>:w<CR>
vmap <F2> <Esc>:w<CR>

""" Command mode mappings
cmap w!! w !sudo tee % >/dev/null

"Rebalance windows on resize
autocmd VimResized * :wincmd =

""" Handle other filetypes
 autocmd BufNewFile,BufRead *.less set ft=css
 autocmd BufNewFile,BufRead *.json set ft=javascript
 autocmd BufNewFile,BufRead *.scaml set ft=haml
