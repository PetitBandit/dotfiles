
" for on the fly temporary mappings 

nnoremap <C-f> :Lines<cr>
map <leader>rf ciw<C-R>=expand("%:t:r")<CR>

    "add the filename 
    imap \fn <C-R>=expand("%:t:r")<CR>
    

