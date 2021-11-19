"--------------------------------------------------------------------------
" Use Alt + hjkl
"-------------------------------------------------------------------------- 
      nnoremap <A-=>   :vertical resize +30<CR>
      nnoremap <A-->   :vertical resize -30<CR>
      " move line downwards 
      nnoremap <A-j>   ddp    
      " move line upwards
      nnoremap <A-k>   ddkkp  
      " nnoremap <A-h> :cprev<cr>zz
      " nnoremap <A-l> :cnext<cr>zz

" ESC 
      inoremap jk <Esc>



"--------------------------------------------------------------------------
" Behind the scenes
"--------------------------------------------------------------------------

      "moves to the current directory
      nnoremap <leader>cd :cd %:p:h<CR> 
      vnoremap < <gv " Better tabbing 
      vnoremap > >gv " Better tabbing 

      " undo break point 
      inoremap , ,<c-g>u
      inoremap . .<c-g>u
      inoremap ! !<c-g>u
      inoremap ? ?<c-g>u

      " Jumps remap 
      nnoremap <expr> k (v:count > 1 ? "m`" . v:count : '') . 'k'
      nnoremap <expr> j (v:count > 1 ? "m`" . v:count : '') . 'j'

"--------------------------------------------------------------------------
" File Manipulation
"--------------------------------------------------------------------------

      nnoremap <silent> <C-S> :w<cr>
      " nnoremap <silent> <C-q> :bd<CR>

      "Indent file and keep cursor position
      nnoremap <leader>p mwgg=G`wzz

      " Fugitive remap 
      nnoremap <leader>gj :diffget //3<CR>
      nnoremap <leader>gf :diffget //2<CR>
      nnoremap <leader>gs :G<CR>
      nnoremap <leader>gb :GBranches<CR>
      nnoremap <leader>gB :Git blame<CR>
      nnoremap <leader>gc :Git commit<CR>
      nnoremap <leader>gP :Git push<CR>
      nnoremap <leader>gp :Git pull<CR>

"--------------------------------------------------------------------------
" Navigation
"--------------------------------------------------------------------------
      map H ^
      map L $
      " nnoremap = :bn<cr>
      " nnoremap - :bp<cr> 

      nnoremap Q q
      nnoremap Y yg_

      ""navigate the changeList
      "nnoremap e g;
      "nnoremap E g,

      " keeping centered while browsing
      nnoremap n nzz
      nnoremap N Nzz

      " Marks 
      nnoremap M m
      nnoremap m '

"--------------------------------------------------------------------------
" Cut, Manipulate text
"--------------------------------------------------------------------------

      "copy paragraph under cursor and paste it under  
      nnoremap <leader>cp yap<S-}>p


      " + or _ will cut a line and paste it here
      nnoremap + :<C-u>+m.<left><left>
      nnoremap _ :<C-u>-m.<left><left>


      " - Smash that dot '.' multiple times to change all the other occurrences of the word
      nnoremap cn *``cgn


"--------------------------------------------------------------------------
" JSX Mappings
"--------------------------------------------------------------------------

    " <div> --> <div className="">
    nmap <leader>cc f>i className="li

    " <div> --> <div className={classes.
    nmap <leader>cC f>i className={classes.

    " classes.tomate --> 'tomate'
    nmap <leader>cs  /classesdiwxysiw'ds{
    "  'tomate' --> classes.tomate
    nmap <leader>cS /classwwyiwda"i{classes.pbds"

    " class --> '& .class'
    nmap <leader>ce ysiw'li& .

    " <div> --> <div className={clsx()}>
    nmap <leader>co f>i className={clsx(

     " className='tomate' --> className={clsx('tomate')}
    nmap <leader>cl f"lcs"{wysiw'ysiW(hiclsxlxf"lli,

     " className={test} --> className={clsx(test, )}
    nmap <leader>cL f{wi f}i bysiW(iclsxf)i, 

    " add import clsx on top of the file and then teleports back to the line we were before
    nnoremap <leader>ic mjggoimport clsx from 'clsx';'j

    "changes makestyle --> makestyle(theme ...
    nnoremap <leader>jtc ?useStyles = makewwwC(theme => ({
    
    nmap <leader>' ysiw'
    nmap <leader>` ysiw`

    "add the filename 
    " imap <leader>fn <C-R>=expand("%")<CR>

xnoremap <leader>ls :'<,'> sort <cr>
xnoremap <leader>ld :'<,'> sort u<cr>
xnoremap <leader>lD :'<,'> %sort! u<cr>
xnoremap <leader>lS :'<,'> %sort! <cr>

