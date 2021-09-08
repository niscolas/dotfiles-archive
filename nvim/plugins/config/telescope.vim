lua << EOF
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            ".git",
            "node_modules",
            "**/*.asmdef",
            "**/*.asset",
            "**/*.bank",
            "**/*.mat",
            "**/*.meta",
            "**/*.mixer",
            "**/*.otf",
            "**/*.physicMaterial",
            "**/*.physicsMaterial",
            "**/*.prefab",
            "**/*.preset",
            "**/*.ttf"
        }
    }
}
EOF

nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

