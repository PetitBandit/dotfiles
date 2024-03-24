" set leader key
    let g:mapleader = "\<Space>"
  " Colors {{{
    set termguicolors
" }}}
  " Misc {{{
  syntax enable                           " Enables syntax highlighing
  set encoding=utf-8                      " The encoding displayed
  set hidden                              " Required to keep multiple buffers open multiple buffers
  set fileencoding=utf-8                  " The encoding written to file
  set lazyredraw                          " prevent redrawing during macro
  set clipboard=unnamedplus               " Copy paste between vim and everything else
 " }}}
" Undo settings {{{
  set undodir=~/.config/nvim/undo
  set undolevels=10000
  set undoreload=100000
  set undofile
" }}}
" " Folding {{{
"       set foldmethod=marker
"       set foldenable   "enable folding
"       "zo to open / zc to close / zM to close all
" " }}}
"Spaces & Tabs {{{
  set tabstop=4     " 1 indentation level = 4 spaces
  set shiftwidth=0
  set shiftwidth=2                        " Change the number of space characters inserted for indentation
  set shiftround
  set expandtab                           " Ident using spaces, not tabs
  set smartindent
  set textwidth=79
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent
" }}}
  "UI Layout {{{
  set pumheight=10                        " Makes popup menu smaller
  set mouse=a                             " Enable your mouse
  set cursorline                          " Enable highlighting of the current line
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  set number                              " turn on numbered lines
  set relativenumber                      " turn on after number
  set showtabline=2                       " Always show tabs
  set wildmenu                            " visual autocomplete for command menu
  set showmatch                           " highlight matching {[()]}
  set matchtime=10
  set cmdheight=2                         " More space for displaying messages
  set laststatus=0                        " Always display the status line
  set signcolumn=yes
  set scrolloff=8
" colorscheme base16-gruvbox-light-soft
colorscheme base16-everforest
" }}}
  " Searching {{{
  noremap / /\v
  set ignorecase
  set smartcase
  set inccommand=split
  set wildmode=longest,list,full
  set completeopt=menuone,noinsert,noselect
" }}}

" set spell spelllang=en_us
set iskeyword+=-                      	" treat dash separated words as a word text object"
set conceallevel=0                      " So that I can see `` in markdown files
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
set synmaxcol=120
let g:vimsyn_embed = 'lPr'

function FileClean()
    let save_cursor = getpos('.')
    " Remove any empty line at the end of the file, except one.
    silent! %s#\($\n\s*\)\+\%$##
    " Remove any trailing whitespace
    silent! %s#\s\+$##
    call setpos('.', save_cursor)
endfunction

autocmd BufWritePre * call FileClean()

" In the case of git diff, context line being empty should have 1 trailing
" whitespace.
function FileCleanDiff()
    let save_cursor = getpos('.')
    silent: %s/^$/ /e
    call setpos('.', save_cursor)
endfunction

autocmd BufWritePre *.diff call FileCleanDiff()

" ## Program enhancements {{{
set nomodeline
set pyxversion=3
let g:loaded_python_provider = 0
" }}}
" insert fancy signifiers with abbrevs
iabbrev todo ·
iabbrev done ×

" select the task list and hit `gq` to sort and group by status
set formatprg=sort\ -V
