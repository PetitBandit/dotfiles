" General setting {{{ 
" Leader Key Maps 
let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100
let g:which_key_vertical = 1
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0



" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
" }}}
"-------------------------------- Single mappings -------------
" Single mappings {{{
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map["p"] = [ ':PrettierAsync'                                  , 'next tab']
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map["1"] = [ '<Plug>AirlineSelectTab1'                         , 'which_key_ignore']
let g:which_key_map["2"] = [ '<Plug>AirlineSelectTab2'                         , 'which_key_ignore']
let g:which_key_map["3"] = [ '<Plug>AirlineSelectTab3'                         , 'which_key_ignore']
let g:which_key_map["4"] = [ '<Plug>AirlineSelectTab4'                         , 'which_key_ignore']
let g:which_key_map["5"] = [ '<Plug>AirlineSelectTab5'                         , 'which_key_ignore']
let g:which_key_map["6"] = [ ''                                                , 'which_key_ignore']
let g:which_key_map["7"] = [ ''                                                , 'which_key_ignore']
let g:which_key_map["8"] = [ ''                                                , 'which_key_ignore']
let g:which_key_map["9"] = [ ''                                                , 'which_key_ignore']
let g:which_key_map["0"] = [ '<C-^>'                                           , 'last tab']
let g:which_key_map["-"] = [ '<Plug>AirlineSelectPrevTab'                      , 'previous tab']
let g:which_key_map["="] = [ '<Plug>AirlineSelectNextTab'                      , 'next tab']
" }}}

"-------------------------------- Group mappings -------------

" b is for buffer {{{
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ 'd' : [':bd'                     , 'delete-buffer'],
      \ 'f' : [':bfirst'                 , 'first-buffer'],
      \ 'l' : [':blast'                  , 'last buffer'],
      \ 'n' : [':bnext'                  , 'next-buffer'],
      \ 'p' : [':bprevious'              , 'previous-buffer'],
      \ 'b' : ['Buffers'                 , 'fzf-buffer'],
      \ }
" }}}
" c is for config {{{
let g:which_key_map.c = {
      \ 'name' : '+buffer' ,
      \ 'b' : [':set background=light', ':set bg=light'],
      \ 'n' : [':set relativenumber!' , 'relativenumber'],
      \ 'l' : [':Limelight!!'         , 'limelight'],
      \ }
" }}}
"f is for search {{{
 let g:which_key_map.f = {
       \ 'name' : '+search' ,
       \ 'a' : [':Ag'                    , 'text Ag'],
       \ 'B' : [':BLines'                , 'current buffer'],
       \ 'b' : [':Buffers'               , 'open buffers'],
       \ 'f' : [':GFiles'                , 'files'],
       \ 'h' : [':History'               , 'file history'],
       \ 'H' : [':History:'              , 'command history'],
       \ 'l' : [':Lines'                 , 'lines'] ,
       \ 'm' : [':Marks'                 , 'marks'] ,
       \ 't' : [':Rg'                    , 'text Rg'],
       \ 'w' : [':NV'                    , 'Search the wiki'],
       \ 'y' : [':Filetypes'             , 'file types'],
       \ 'z' : [':FZF'                   , 'FZF'],
       \ }
" }}}
" g is for git or Go  {{{
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 't' : [':call OpenAndSearch()<CR>'       , 'Theme'],
      \ ';' : ['g;'       , 'previous change'],
      \ ',' : ['g,'       , 'next change'],
      \ }
" }}}
" l is for langage {{{
let g:which_key_map.l = {
      \ 'name' : '+lang' ,
      \ 'e' : [':setlocal spell spelllang=en_us'                , 'english'],
      \ 'f' : [':setlocal spell spelllang=fr'                , 'french'],
      \ }
" }}}
" m is for marks {{{
let g:which_key_map.m = {
      \ 'name' : '+Marks' ,
      \ 'm' : ['m,'          , 'place the next available mark']  ,
      \ 'n' : [']`'          , 'jump to next mark']  ,
      \ 'p' : ['[`'          , 'jump to previous mark']  ,
      \ }
" }}}
" q is for quickfixList {{{
let g:which_key_map.q = {
      \ 'name' : '+Marks' ,
      \ 'o' : [':copen'          , 'open Quickfix']  ,
      \ 'q' : [':cclose'         , 'close Quickfix']  ,
      \ 'j' : [':cnext'          , 'next Quick']  ,
      \ 'k' : [':cprev'          , 'prev Quick']  ,
      \ }
" }}}
"o is for adding lines {{{
let g:which_key_map.o = {
      \ 'name' : '+actions' ,
      \ 'J' : ['<C-j>'                      , 'remove line under[<C-j>]'],
      \ 'K' : ['<C-k>'                      , 'remove line top [<C-k>]'],
      \ 'j' : ['ø'                          , 'add a line under [Alt-o]'],
      \ 'k' : ['Ø'                          , 'add a line above [Alt-O]'],
      \ 'o' : [':call IsolateBracket()<cr>' , 'add a lign and after {'],
      \ }
" }}}
" s is for session {{{
let g:which_key_map.s = {
      \ 'name' : '+Save Splash Session' ,
      \ 'f' : [':q'               , 'save File']     ,
      \ 'n' : [':CocCommand snippets.editSnippets'  , 'Edit Snips']  ,
      \ }
" }}}

      " \ 's' : [':Startify'        , 'Start Page']    ,

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
