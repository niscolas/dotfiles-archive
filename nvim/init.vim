let g:is_wsl = 0
let g:is_windows = has("win32")

if has("unix")
    let lines = readfile("/proc/version")
    if lines[0] =~ "Microsoft"
        let g:is_wsl = 1
    endif
endif

let g:is_wsl_or_windows = g:is_wsl || g:is_windows

let s:linux_config_path = '~/.config/nvim/'
let s:windows_config_path = '~/dotfiles/nvim/'

function! g:GetConfigPath()
  if g:is_windows
    return s:windows_config_path
  else 
    return s:linux_config_path
  endif
endfunction

function! g:SmartSourcePath(path_name)
  execute "source " . g:GetConfigPath() . a:path_name
endfunction

call g:SmartSourcePath("settings.vim")
call g:SmartSourcePath("gui/settings.vim")
" call g:SmartSourcePath("neovide/settings.vim")
call g:SmartSourcePath("keymap.vim")

if exists('g:vscode')
  call g:SmartSourcePath("vscode_neovim/keymap.vim")
endif

call g:SmartSourcePath("plugins/plugins.vim")
call g:SmartSourcePath("plugins/plugins-setup.vim")

