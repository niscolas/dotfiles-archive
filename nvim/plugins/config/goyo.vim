function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nolist
    set number relativenumber
    set scrolloff=999
    Limelight
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

