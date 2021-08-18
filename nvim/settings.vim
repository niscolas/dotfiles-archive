filetype indent plugin on
if !exists('g:syntax_on') | syntax enable | endif
set encoding=utf-8
scriptencoding utf-8

syntax on

" leader
let mapleader=" "

" backup / undoing
set nobackup
set noswapfile
set nowritebackup
set undodir=~/.vim/undodir
set undofile

" indenting
set expandtab
set foldmethod=marker
set foldmarker={{{,}}}
set shiftround
set shiftwidth=4
set smartindent
set softtabstop=-1
set tabstop=8

" buffers / tabs / windows
set splitbelow
set splitright

" searching
set hlsearch
set incsearch

" hidden characters
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" spelling
set spell
set spelllang=en_us

" other settings
set cmdheight=2
set colorcolumn=80
set cursorline
set exrc
set hidden
set history=1000
set ignorecase
set noerrorbells
set noshowmode
set nowrap
set number 
set relativenumber
set scrolloff=16
set title
set updatetime=500

" completion
set completeopt=menuone,noinsert,noselect,preview
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" colors
" Use truecolor in the terminal, when it is supported
if has('termguicolors')
    set termguicolors
endif
colorscheme gruvbox
set background=dark

