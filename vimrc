set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Colorscheme
Plugin 'altercation/vim-colors-solarized'

" Fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" Search within files
Plugin 'rking/ag.vim'

" Comment support
Plugin 'tomtom/tcomment_vim'

" Move with style
Plugin 'Lokaltog/vim-easymotion'

" Git support
Plugin 'tpope/vim-fugitive'

" Jump to matching symbols
Plugin 'tmhedberg/matchit'

" Javascript syntax
Plugin 'pangloss/vim-javascript'

" Autocomplete support
Plugin 'Valloric/YouCompleteMe'

" Snippet support
Plugin 'SirVer/ultisnips'

" JSX syntax
Plugin 'mxw/vim-jsx'

" Close html/jsx tags
Plugin 'alvan/vim-closetag'

" [Testing] Autoformat code
Plugin 'prettier/vim-prettier'


call vundle#end()

syntax enable                " Enables syntax highlighting
filetype plugin indent on    " Recognize filetype
set t_Co=256                 " For colorschemes
set background=dark
colorscheme solarized

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
" Make it obvious where 80 characters is
let &colorcolumn=join(range(81,999),",")

" Buffer management
set hidden      " Handle multiple buffers better.
set splitright  " vs splits new window to east
set autowrite   " Save files when switching buffer

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

" Re map leader
let mapleader=","
let g:mapleader=','
let g:maplocalleader=','

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

""" Mapping Leader Keys
nmap <Leader>c :TComment<CR>
vmap <Leader>c :TComment<CR>

" Open file finder
nmap <Leader>t :CtrlP<CR>

" Trigger Ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"   
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" Edit vimrc
nmap <Leader>e :e $MYVIMRC<CR>

" Reload vimrc
nmap <Leader>r :source ~/.vimrc<CR>

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
autocmd BufNewFile,BufRead *.axlsx set ft=ruby

""" Allow .js files to be jsx highlighted
let g:jsx_ext_required = 0

""" Close tags for associated filetypes
let g:closetag_filenames = "*.html,*.jsx,*.js"


""" Prettier settings
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 80

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'false'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'

" none|es5|all
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|postcss
let g:prettier#config#parser = 'flow'
