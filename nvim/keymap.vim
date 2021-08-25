" literally must have
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>

" fix capital Y
nnoremap Y y$

" replace default redo
nnoremap U <c-r>

" clear search
nnoremap <cr> :noh<cr><cr>

nnoremap \v :source $MYVIMRC<cr>

" editing files
nnoremap <leader>s :w<cr>
nnoremap <leader>qq :Bdelete<cr>
nnoremap <leader>qa :bufdo Bdelete<cr>

" quickfix list
nnoremap <leader>qo :copen<cr>
nnoremap <leader>qc :cclose<cr>
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qp :cprevious<cr>

" buffers / tabs / windows
nnoremap <a-l> :bnext<cr> 
nnoremap <a-h> :bprevious<cr> 

let g:resize_amount = 5
nnoremap <silent> \j :exe "resize +" . (g:resize_amount)<cr>
nnoremap <silent> \k :exe "resize -" . (g:resize_amount)<cr>
nnoremap <silent> \h :exe "vertical resize -" . (g:resize_amount)<cr>
nnoremap <silent> \l :exe "vertical resize +" . (g:resize_amount)<cr>

" moving lines
nnoremap <a-j> :m .+1<cr>==
nnoremap <a-k> :m .-2<cr>==
inoremap <a-j> <esc>:m .+1<cr>==gi
inoremap <a-k> <esc>:m .-2<cr>==gi
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

