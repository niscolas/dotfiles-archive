let g:using_snippets = 0

packadd cfilter

call plug#begin(stdpath('data') . '/plugged')

" auto-completion / linting / language support: {{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'

" }}}

" code editing / navigation: {{{

if g:using_snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " Plug 'honza/vim-snippets'
    " Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/goyo.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'easymotion/vim-easymotion'

" }}}

" appearance: {{{

Plug 'kyazdani42/nvim-web-devicons'
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'akinsho/nvim-bufferline.lua'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'

" }}}

" version control: {{{

Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

" }}}

" file / project management: {{{

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-eunuch'

" }}}

" text objs: {{{

Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/argtextobj.vim'

" }}}

" other: {{{

Plug 'vim-utils/vim-man'
Plug 'vimwiki/vimwiki'
Plug 'moll/vim-bbye'

" }}}

call plug#end()

