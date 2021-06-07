" Better nav for omnicomplete {{{
    inoremap <expr> <c-TAB> ("\<C-n>")
    inoremap <expr> <c-k> ("\<C-p>")
"}}}
" Use alt + hjkl  {{{
    " alt h = ˙
    " alt j = ∆
    " alt k = ˚
    " alt l = ¬
    " 
    " alt + j = move downwards the line and alt + k move upwards
      nnoremap ∆   ddp    
      nnoremap ˚   ddkkp
      nnoremap ˙   :vertical resize +30<CR>
      nnoremap ¬   :vertical resize -30<CR>
" }}}
" ESC {{{
      inoremap jk <Esc>
      inoremap kj <Esc>
"}}}
" Jumps remap {{{
    nnoremap <expr> k (v:count > 1 ? "m`" . v:count : '') . 'gk'
    nnoremap <expr> j (v:count > 1 ? "m`" . v:count : '') . 'gj'
" }}}
" Breaking the habits - only hjkl {{{
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
" }}}


" add lines with o {{{
    "add a line down == alt + o
    " Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

    "add a line up == alt + shift + o

      nnoremap Ø :set paste<CR>m`O<Esc>``:set nopaste<CR>
      nnoremap ø :set paste<CR>m`o<Esc>``:set nopaste<CR>


      " nnoremap Ø O<Esc>j
" }}}
" Ctrl + TAB in general mode will move to text buffer {{{
    nnoremap <S-TAB> :bnext<CR>
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"}}}
" Better tabbing {{{
    vnoremap < <gv
    vnoremap > >gv
" }}}
xnoremap p "_dP
nnoremap P "0p
" Better window navigation {{{
    " nnoremap <C-h> <C-w>h
    " nnoremap <C-l> <C-w>l
" }}}

" Marks {{{
nnoremap M m
nnoremap m '
"}}}
" Link to common files {{{

nnoremap <leader>gv :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}
" SNIPPETS {{{
    nnoremap ,bgct :-1read $HOME/.config/nvim/snips/.jss.bgct<CR>j
    nnoremap ,childrendot :-1read $HOME/.config/nvim/snips/.jss.childrendot<CR>j
" }}}


" Bookmark and go file{{{
nnoremap <leader>bs :Bookmark<cr>
nnoremap gf gF
" }}}

"S for search and Substitute
nnoremap S yiw:%s/"//gc<left><left><left>
nnoremap s *

" Fugitive remap
nnoremap <leader>gf :diffget //3<CR>
nnoremap <leader>gj :diffget //2<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gb :GBranches<CR>
nnoremap <leader>gB :Git blame<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gP :Git push<CR>
nnoremap <leader>gp :Git pull<CR>


nmap <leader>G :Rg const <C-r><C-w><CR>
nmap <leader>z z=1<cr>
nnoremap <leader>8 *
nnoremap <leader><leader> :Limelight!!<CR>
" nnoremap <leader>p mjgg=G:%s/\(\n\n\)\n\+/\1/<cr>'j
