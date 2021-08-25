" airline: {{{

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

let g:airline_extensions = [
            \ "ale",
            \ "omnisharp",
            \ "tabline"
            \ ]

let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" }}}

" ale: {{{

let g:ale_linters = {
    \ 'cs': ['OmniSharp']
    \}

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'

" }}}

" asyncomplete: {{{

let g:asyncomplete_auto_completeopt = 0

" }}}

" bufferline: {{{

" lua << EOF
" require("bufferline").setup{}
" EOF

" }}}

" fzf: {{{

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
    
" }}}
"
" " galaxyline: {{{

" source ~/.config/nvim/plugins/statusline.lua

" " }}}

" goyo: {{{

function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nolist
    set number relativenumber
    set scrolloff=999
    Limelight
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

" }}}

" gruvbox: {{{

colorscheme gruvbox
set background=dark

" }}}

" omnisharp: {{{

let g:OmniSharp_translate_cygwin_wsl = 1

let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_selector_ui = 'fzf'

let g:OmniSharp_diagnostic_showid = 1
let g:OmniSharp_diagnostic_exclude_paths = [
    \ '[Tt]emp',
    \ 'obj',
    \ '[Ll]ibrary',
    \ '**\\Unity\\Hub'
    \]
" IDE0055: Fix formatting - display in ALE as `Warning` style error
" CS8019: Duplicate of IDE0005
" RemoveUnnecessaryImportsFixable: Generic warning that an unused using exists
let g:OmniSharp_diagnostic_overrides = {
    \ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
    \}

" popups 
let g:OmniSharp_popup_position = 'peek'

if has('nvim')
    let g:OmniSharp_popup_options = {
                \ 'winhl': 'Normal:NormalFloat'
                \}
else
    let g:OmniSharp_popup_options = {
                \ 'highlight': 'Normal',
                \ 'padding': [0, 0, 0, 0],
                \ 'border': [1]
                \}
endif

let g:OmniSharp_popup_mappings = {
            \ 'sigNext': '<C-n>',
            \ 'sigPrev': '<C-p>',
            \}

" snippets
if g:using_snippets
    let g:OmniSharp_want_snippet = 1
endif

let g:OmniSharp_highlight_groups = {
            \ 'ExcludedCode': 'NonText'
            \}

" }}}

" nvim-tree: {{{

let g:nvim_tree_width = 30 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache', '*.meta'] "empty by default
let g:nvim_tree_gitignore = 0 "0 by default
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 0 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 1 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 1 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_window_picker_exclude = {
            \   'filetype': [
                \     'packer',
                \     'qf'
                \   ],
                \   'buftype': [
                    \     'terminal'
                    \   ]
                    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
            \ 'git': 0,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 1,
            \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
            \ 'default': '',
            \ 'symlink': '',
            \ 'git': {
                \   'unstaged': "✗",
                \   'staged': "✓",
                \   'unmerged': "",
                \   'renamed': "➜",
                \   'untracked': "★",
                \   'deleted': "",
                \   'ignored': "◌"
                \   },
                \ 'folder': {
                    \   'arrow_open': "",
                    \   'arrow_closed': "",
                    \   'default': "",
                    \   'open': "",
                    \   'empty': "",
                    \   'empty_open': "",
                    \   'symlink': "",
                    \   'symlink_open': "",
                    \   },
                    \   'lsp': {
                        \     'hint': "",
                        \     'info': "",
                        \     'warning': "",
                        \     'error': "",
                        \   }
                        \ }

highlight NvimTreeFolderIcon guibg=blue

" }}}

" telescope: {{{

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

" }}}
