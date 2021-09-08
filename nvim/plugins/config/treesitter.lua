require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
      "cpp", 
      "c_sharp" 
  },
  highlight = {
    enable = true,
    disable = { "vim" },
    additional_vim_regex_highlighting = false,
  },
}

