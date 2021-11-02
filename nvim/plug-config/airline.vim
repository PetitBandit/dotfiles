
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
" enable tabline
" airline symbol

let g:airline#extensions#tabline#enabled            = 1
let g:airline#extensions#tabline#left_sep           = ''
let g:airline#extensions#tabline#left_alt_sep       = ''
let g:airline#extensions#tabline#right_sep          = ''
let g:airline#extensions#tabline#right_alt_sep      = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep        = ''
let g:airline_left_alt_sep    = ''
let g:airline_right_sep       = ''
let g:airline_right_alt_sep   = ''

let g:airline#extensions#tabline#symbols#branch     = ''
let g:airline#extensions#tabline#symbols#readonly   = ''
let g:airline#extensions#tabline#symbols#linenr     = ''




" Switch to your current theme

let g:airline_theme = 'oceanicnext'


" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
