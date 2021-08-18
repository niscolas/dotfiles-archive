" literally must have
nnoremap <Left> :echoe "use h"<CR>
nnoremap <Right> :echoe "use l"<CR>
nnoremap <Up> :echoe "use k"<CR>
nnoremap <Down> :echoe "use j"<CR>

" replace default redo
nnoremap U <c-r>

" clear search
nnoremap <cr> :noh<cr><cr>

nnoremap \v :source $HOME/.vimrc<cr>

" allow yanking to windows clipboard
nnoremap <leader>y "+y :w !clip.exe<cr><cr>
vnoremap <leader>y "+y :w !clip.exe<cr><cr>

" editing files
nnoremap <leader>s :wa<cr>
nnoremap <leader>q :bd<cr>

" buffers / tabs / windows
nnoremap <a-l> :bnext<cr> 
nnoremap <a-h> :bprevious<cr> 

let g:resize_amount = 10
nnoremap <silent> <a-j> :exe "resize +" . (g:resize_amount)<cr>
nnoremap <silent> <a-k> :exe "resize -" . (g:resize_amount)<cr>
nnoremap <silent> <a-h> :exe "vertical resize -" . (g:resize_amount)<cr>
nnoremap <silent> <a-l> :exe "vertical resize +" . (g:resize_amount)<cr>

" moving lines
" nnoremap <a-j> :m .+1<cr>==
" nnoremap <a-k> :m .-2<cr>==
" inoremap <a-k> <esc>:m .-2<cr>==gi
" inoremap <a-j> <esc>:m .+1<cr>==gi

