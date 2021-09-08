lua << EOF
require'lspsaga'.init_lsp_saga {
    -- add your config value here
    -- default value
    -- use_saga_diagnostic_sign = true
    -- error_sign = '',
    -- warn_sign = '',
    -- hint_sign = '',
    -- infor_sign = '',
    -- dianostic_header_icon = '   ',
    -- code_action_icon = ' ',
    -- code_action_prompt = {
    --   enable = true,
    --   sign = true,
    --   sign_priority = 20,
    --   virtual_text = true,
    -- },
    -- finder_definition_icon = '  ',
    -- finder_reference_icon = '  ',
    -- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
    -- finder_action_keys = {
    --   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
    -- },
    -- code_action_keys = {
    --   quit = 'q',exec = '<cr>'
    -- },
    -- rename_action_keys = {
    --   quit = '<C-c>',exec = '<cr>'  -- quit can be a table
    -- },
    -- definition_preview_icon = '  '
    -- "single" "double" "round" "plus"
    -- border_style = "single"
    -- rename_prompt_prefix = '➤',
    -- if you don't use nvim-lspconfig you must pass your server name and
    -- the related filetypes into this table
    -- like server_filetype_map = {metals = {'sbt', 'scala'}}
    -- server_filetype_map = {}
}
EOF

" lsp provider to find the cursor word definition and reference
nnoremap <leader>fr <cmd>lua require'lspsaga.provider'.lsp_finder()<cr>

" code action
nnoremap <leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<cr>
vnoremap <leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<cr>

" show hover doc
nnoremap K <cmd>lua require('lspsaga.hover').render_hover_doc()<cr>
" scroll down hover doc or scroll in definition preview
nnoremap <c-n> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>
" scroll up hover doc
nnoremap <c-p> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>

" show signature help
nnoremap <c-\> <cmd>lua require('lspsaga.signaturehelp').signature_help()<cr>

" rename
nnoremap <leader>r <cmd>lua require('lspsaga.rename').rename()<cr>

" preview definition
" nnoremap gd <cmd>lua require'lspsaga.provider'.preview_definition()<cr>

" show
nnoremap <leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<cr>

" jump diagnostic
nnoremap [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<cr>
nnoremap ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<cr>

