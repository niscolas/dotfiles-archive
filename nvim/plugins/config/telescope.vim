lua << EOF
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            ".git",
            "node_modules",
            "**/*.asmdef",
            "**/*.asset",
            "**/*.bank",
            "**/*.jpg",
            "**/*.jpeg",
            "**/*.mat",
            "**/*.meta",
            "**/*.mixer",
            "**/*.png",
            "**/*.otf",
            "**/*.physicMaterial",
            "**/*.physicsMaterial",
            "**/*.prefab",
            "**/*.preset",
            "**/*.ttf",
            "**/*.wav"
        }
    }
}
EOF

nnoremap <c-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <c-f> <cmd>lua require('telescope.builtin').live_grep()<cr>

nnoremap gd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
nnoremap <leader>ca <cmd>lua require('telescope.builtin').lsp_code_actions()<cr>
nnoremap <leader>cc <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>
