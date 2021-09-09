let g:using_snippets = 0

packadd cfilter

call plug#begin(stdpath('data') . '/plugged')

" nvim lsp: {{{

Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
" completion (snippets)
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'
" other
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'glepnir/lspsaga.nvim'

" Plug 'OmniSharp/omnisharp-vim'
" Plug 'dense-analysis/ale'

" }}}

" code editing / navigation: {{{

" if g:using_snippets
"     Plug 'SirVer/ultisnips'
"     Plug 'honza/vim-snippets'
"     " Plug 'honza/vim-snippets'
"     " Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
" endif
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

Plug 'akinsho/nvim-bufferline.lua'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rktjmp/lush.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" }}}

" version control: {{{

Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

" }}}

" file / project management: {{{

Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-eunuch'

" }}}

" text objs: {{{

Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/argtextobj.vim'

" }}}

" other: {{{

Plug 'folke/which-key.nvim'
Plug 'moll/vim-bbye'
Plug 'vim-utils/vim-man'
Plug 'vimwiki/vimwiki'

" }}}

call plug#end()

