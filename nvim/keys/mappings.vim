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


" Better tabbing {{{
      vnoremap < <gv
      vnoremap > >gv
" }}}


" Marks {{{
      nnoremap M m
      nnoremap m '
"}}}


" Bookmark and go file{{{
      nnoremap gf gF
" }}}

"S for search and Substitute

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
      " navigation {{{
      map H ^
      map L $

      nnoremap <bs> :Buffers<cr>
     
      " }}}
      nnoremap Q q
      nnoremap Y yg_

      " keeping centered while browsing
      nnoremap n nzz
      nnoremap N Nzz
      nnoremap <C-k> :cprev<cr>zz
      nnoremap <C-j> :cnext<cr>zz

      " undo break point 
      inoremap , ,<c-g>u
      inoremap . .<c-g>u
      inoremap ! !<c-g>u
      inoremap ? ?<c-g>u

      nnoremap <silent> <C-S> :w<cr>
      nnoremap <silent> <C-q> :bd<CR>
      nnoremap <leader>cd :cd %:p:h<CR>

      nnoremap + :<C-u>+m.<left><left>
      nnoremap - :<C-u>-m.<left><left>

"This I got from another thread, in normal mode press + and than a relative line number(for lines below the cursor, i.e. if you want the 20th line below just type 20 after the +) and press enter to copy that relative line and paste it where ever your cursor is(and of course press - for lines above)

" - Go on top of a word you want to change
" - Press cn or cN
" - Type the new word you want to replace it with
" - Smash that dot '.' multiple times to change all the other occurrences of the word
" It's quicker than searching or replacing. It's pure magic.
 nnoremap cn *``cgn

 nnoremap <leader>yoh :HardTimeToggle <cr>

 " jss specific {{{
nmap <leader>cv f>i className={clsx( 
    " <div> --> <div className="">
     nmap <leader>cc f>i className="li
    " classes.tomate --> 'tomate'
     nmap <leader>cs  /classesdiwxysiw'
    "  'tomate' --> classes.tomate
     nmap <leader>cS /classwwyiwda"i{classes.pbds"
    " <div> --> <div className="">
     nmap <leader>cc f>i className="li
    " classes.tomate --> 'tomate'
     nmap <leader>cs  /classesdiwxysiw'
    " class --> '& .class'
     nmap <leader>ce ysiw'li& .
     " className='tomate' --> className={clsx('tomate')}
     nmap <leader>cl f"lcs"{wysiw'ysiW(hiclsxlxf"lli,

     " className={test} --> className={clsx(test, )}
    nmap <leader>cs f{wi f}i bysiW(iclsxf)i, 

    " add import clsx on top of the file and then teleports back to the line we were before
    nnoremap <leader>ic mjggoimport clsx from 'clsx';'j

    " class --> '& .class'
     nmap <leader>ce ysiw'li& .

     " className='tomate' --> className={clsx('tomate')}
     nmap <leader>cl f"lcs"{wysiw'ysiW(hiclsxlxf)i,

     " className={test} --> className={clsx(test, )}
    nmap <leader>cs f{wi f}i bysiW(iclsxf)i, 

    " add import clsx on top of the file and then teleports back to the line we were before
    nnoremap <leader>ic mjggoimport clsx from 'clsx';'j

    "changes makestyle --> makestyle(theme ...
    nnoremap <leader>jtc ?useStyles = makewwwC(theme => ({
    " }}}

    "copy paragraph under cursor and paste it under  
    nnoremap <leader>cp yap<S-}>p
    " nnoremap ; :
    
    nmap <leader>' ysiw'
    nmap <leader>` ysiw`



    "add the filename 
    imap \fn <C-R>=expand("%")<CR>
