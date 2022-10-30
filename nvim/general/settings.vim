" set leader key
    let g:mapleader = "\<Space>"
  " Colors {{{
 
    set t_Co=256                           " Support 256 colors
    set background=dark                     " tell vim what the background color looks like
    set termguicolors
" colorscheme base16-gruvbox-dark-hard
" colorscheme base16-gruvbox-dark-medium
" colorscheme base16-gruvbox-dark-pale
" colorscheme base16-gruvbox-dark-soft
" colorscheme base16-gruvbox-light-hard
" colorscheme base16-gruvbox-light-medium
" colorscheme base16-gruvbox-light-soft
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
" Folding {{{
      set foldmethod=marker
      set foldenable   "enable folding  
      "zo to open / zc to close / zM to close all
" }}}
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
  set ruler              			            " Show the cursor position all the time
  set mouse=a                             " Enable your mouse
  set title
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
  colorscheme gruvbox
  " colorscheme gruvbox-baby
" }}}
  " Searching {{{
  noremap / /\v
  set ignorecase
  set smartcase
  set inccommand=split
  set wildmode=longest,list,full
  set completeopt=menuone,noinsert,noselect
" }}}
  " Plugin 
    " - CoC
    set nobackup                            " This is recommended by coc
    set nowritebackup                       " This is recommended by coc

" set spell spelllang=en_us
set iskeyword+=-                      	" treat dash separated words as a word text object"
set conceallevel=0                      " So that I can see `` in markdown files
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
set synmaxcol=120
let g:vimsyn_embed = 'lPr'

" ## Program enhancements {{{
set nomodeline
set pyxversion=3
let g:loaded_python_provider = 0
" }}}
