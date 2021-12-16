" let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

let g:airline_extensions = [
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

