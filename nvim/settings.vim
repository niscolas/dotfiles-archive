if !g:is_windows
    set shell=/usr/bin/bash
else
    set shell=cmd
endif

filetype indent plugin on
if !exists("g:syntax_on")
    syntax enable
endif

set encoding=utf-8
scriptencoding utf-8

" leader
let mapleader=" "

if &compatible
  set nocompatible
endif

" backup / undoing: {{{

set nobackup
set noswapfile
set nowritebackup
set undodir=~/.local/share/nvim/undodir
set undofile

" }}}

" buffers / tabs / windows: {{{

set splitbelow
set splitright

" }}}

" colors: {{{

" true color support
if has('termguicolors')
    set termguicolors
endif

" }}}

" clipboard: {{{

if g:is_wsl
    let s:clip = '/mnt/c/Windows/System32/clip.exe'

    if executable(s:clip)
        augroup WSLYank
            autocmd!
            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
    endif
endif

" }}}

" completion: {{{

set completeopt=menu,menuone,noselect
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" }}}

" folding: {{{

set foldmethod=marker
set foldmarker={{{,}}}

" }}}

" hidden characters: {{{

set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" }}}

" indenting: {{{

set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smartindent
set softtabstop=-1
set tabstop=8

" }}}

" line numbers: {{{

set number 
set relativenumber

" }}}

" other settings: {{{

set clipboard+=unnamedplus
set cmdheight=2
set colorcolumn=80
set cursorline
set exrc
set hidden
set history=1000
set noerrorbells
set noshowmode
set nowrap
set scrolloff=16
set timeoutlen=1000
set title
set updatetime=500

" }}}

" searching: {{{

set hlsearch
set ignorecase
set incsearch
set smartcase

" }}}

" spelling: {{{

set nospell
" set spell
" set spelllang=en_us

" }}}

" " wildmenu: {{{

" set wildmode=longest,list,full
" set wildmenu
" set wildignore+=**/.git/*
" set wildignore+=**/node_modules/*
" " unity related
" set wildignore+=*.meta
" set wildignore+=*.asset
" set wildignore+=*.mat
" set wildignore+=*.physicMaterial
" set wildignore+=*.physicsMaterial

" " }}}

