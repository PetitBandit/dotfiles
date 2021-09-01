" Better nav for omnicomplete {{{
      inoremap <expr> <c-TAB> ("\<C-n>")
      inoremap <expr> <c-k> ("\<C-p>")
"}}}
" Mac remap {{{
      nmap ∆   <A-j>
      nmap ˚   <A-k>
      nmap Ø   <A-O>
      nmap ø   <A-o>
" }}}
" Use alt + hjkl  {{{
      " alt h = ˙
      " alt j = ∆
      " alt k = ˚
      " alt l = ¬
      " 
      " alt + j = move downwards the line and alt + k move upwards
      nnoremap ˙   :vertical resize +30<CR>
      nnoremap ¬   :vertical resize -30<CR>
      nnoremap <A-j>   ddp    
      nnoremap <A-k>   ddkkp
" }}}
" ESC {{{
      inoremap jk <Esc>
"}}}
" Jumps remap {{{
      nnoremap <expr> k (v:count > 1 ? "m`" . v:count : '') . 'k'
      nnoremap <expr> j (v:count > 1 ? "m`" . v:count : '') . 'j'
" }}}
" Breaking the habits - only hjkl {{{
      nnoremap <left> <nop>
      nnoremap <right> <nop>
      nnoremap <up> <nop>
      nnoremap <down> <nop>
" }}}

" " TAB completion {{{
"       inoremap <expr> <Tab> pumvisible() ? '\<C-n>' : '\<Tab>'
"       inoremap <expr> <S-Tab> pumvisible() ? '\<C-p>' : '\<S-Tab>'
      
"}}}
" Better tabbing {{{
      vnoremap < <gv
      vnoremap > >gv
" }}}
"Pasting {{{
      " xnoremap p "_dP
      " nnoremap P "0p
"}}}


" Marks {{{
      nnoremap M m
      nnoremap m '
"}}}


" Bookmark and go file{{{
      nnoremap <leader>bs :Bookmark<cr>
      nnoremap gf gF
" }}}

"S for search and Substitute
      " nnoremap <leader>S :call ReplaceWordUnderCursor()<cr>

      " Fugitive remap {{{
      nnoremap <leader>gf :diffget //3<CR>
      nnoremap <leader>gj :diffget //2<CR>
      nnoremap <leader>gs :G<CR>
      nnoremap <leader>gb :GBranches<CR>
      nnoremap <leader>gB :Git blame<CR>
      nnoremap <leader>gc :Git commit<CR>
      nnoremap <leader>gP :Git push<CR>
      nnoremap <leader>gp :Git pull<CR>
"}}}

      nnoremap Q q
      nnoremap Y yg_
      " keeping centered while browsing
      nnoremap n nzz
      nnoremap N nzz
      nnoremap <C-k> :cprev<cr>zz
      nnoremap <C-j> :cnext<cr>zz
      " undo break point 
      inoremap , ,<c-g>u
      inoremap . .<c-g>u
      inoremap ! !<c-g>u
      inoremap ? ?<c-g>u

      map H ^
      map L $
      nnoremap <C-S> :w<cr>
      nnoremap <Leader>x *``cgn
      nnoremap <leader>cd :cd %:p:h<CR>
      nnoremap <bs> <c-O>
      nnoremap <silent> <C-q> :bd<CR>
      " map <silent> <C-h> 5<C-w><
      " map <silent> <C-j> 5<C-W>-
      " map <silent> <C-k> 5<C-W>+
      " map <silent> <C-l> 5<C-w>>

      nnoremap + :<C-u>+m.<left><left>
      nnoremap - :<C-u>-m.<left><left>
"This I got from another thread, in normal mode press + and than a relative line number(for lines below the cursor, i.e. if you want the 20th line below just type 20 after the +) and press enter to copy that relative line and paste it where ever your cursor is(and of course press - for lines above)

