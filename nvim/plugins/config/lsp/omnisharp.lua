local nvim_lsp = require'lspconfig'

local pid = vim.fn.getpid()
local omnisharp_bin = "/home/niscolas/.omnisharp/omnisharp-roslyn/run"

require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
        debounce_text_changes = 150,
    }
}

