let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
" highlight Sneak guifg=black guibg=blue ctermfg=black ctermbg=cyan
" highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
    " highlight link Sneak None

" Cool prompts
let g:sneak#prompt = '🕵'
 " let g:sneak#prompt = '🔎'


    " label-mode
    nmap s <Plug>SneakLabel_s
    nmap S <Plug>SneakLabel_S
