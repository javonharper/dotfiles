set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Colorschemes
Plugin 'javonharper/fortress-vim'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" Search text within files
Plugin 'rking/ag.vim'

" Comments
Plugin 'tomtom/tcomment_vim'

" Move with style
Plugin 'Lokaltog/vim-easymotion'

" Git
Plugin 'tpope/vim-fugitive'

" Jump to matching symbols
Plugin 'tmhedberg/matchit'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

"" Syntax
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'

" Close html/jsx tags
Plugin 'alvan/vim-closetag'

" Autoformat code
Plugin 'prettier/vim-prettier'

call vundle#end()

syntax enable                " Enables syntax highlighting
filetype plugin indent on    " Recognize filetype
set t_Co=256                 " For colorschemes
set background=dark

colorscheme fortress

" Interface
set number        " Line numbers
set nowrap        " Turn off line wrapping
set cursorline    " Shows current line highlighted
set showcmd       " Show incomplete commands
set showmode      " Show current mode (INSERT, VISUAL, etc)
set showmatch     " Show matching bracets when text indicator is over them

" Buffer management
set laststatus=2 " Show current file at all times
set hidden       " Handle multiple buffers better
set splitright   " vs splits new window to east
set autowrite    " Save files when switching buffer

" Bash-like completion
set wildmenu                                     " Status line for vim
set wildmode=list:longest                        " Complete files like a shell
set wildignore+=*.a,*.o,*.class,*.pyc,*.scssc    " Ignore compiled files
set wildignore+=*.jar,*.zip,*.cache              " Ignore compressed files
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

" Make it obvious where 80 characters is
" let &colorcolumn=join(range(81,999),",")

" Re-map leader
let mapleader=","
let g:mapleader=','
let g:maplocalleader=','

" Center screen when searching
map N Nzz
map n nzz

noremap U :redo<CR>
noremap Y y$
nmap K 0D

" Better buffer movement
noremap H :bp<CR>
noremap L :bn<CR>

" Better movement between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <Leader>c :TComment<CR>
vmap <Leader>c :TComment<CR>

" Open file finder
map <C-p> <Nop>
nmap <Leader>t :CtrlP<CR>

" Edit vimrc
nmap <Leader>e :e $MYVIMRC<CR>

" Reload vimrc
nmap <Leader>r :source ~/.vimrc<CR>

" Save with F1
nmap <F1> <Esc>:w<CR>
nmap <F2> <Esc>:w<CR>
nmap <F3> <Esc>:w<CR>
nmap <F12> <Esc>:bd<CR>

""" Command mode mappings
cmap w!! w !sudo tee % >/dev/null

"Rebalance windows on resize
autocmd VimResized * :wincmd =

""" Allow .js files to be jsx highlighted
let g:jsx_ext_required = 0

""" Close tags for associated filetypes
let g:closetag_filenames = "*.html,*.jsx,*.js"

""" Prettier settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.json PrettierAsync
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'none'

""" Get highlight group under cursor
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
