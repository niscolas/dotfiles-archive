let g:using_snippets = 0

packadd cfilter

call plug#begin(stdpath('data') . '/plugged')

" appearance {{{

Plug 'akinsho/nvim-bufferline.lua'
Plug 'drzel/vim-gui-zoom'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'rktjmp/lush.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" }}}

" code editing / navigation {{{

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'machakann/vim-highlightedyank'
Plug 'easymotion/vim-easymotion'

" }}}

" completion {{{

Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"}}}

" debugging {{{

Plug 'mfussenegger/nvim-dap'

"}}}

" file / project management {{{

Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-eunuch'

" }}}

" nvim lsp {{{

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'

" }}}

" text objs {{{

Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/argtextobj.vim'

" }}}

" version control {{{

Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

" }}}
"
" other {{{

Plug 'dstein64/vim-startuptime'
Plug 'folke/which-key.nvim'
Plug 'moll/vim-bbye'
Plug 'vim-utils/vim-man'
Plug 'vimwiki/vimwiki'
" Plug 'wakatime/vim-wakatime'

" }}}

call plug#end()

