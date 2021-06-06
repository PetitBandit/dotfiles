" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    
    Plug 'prettier/vim-prettier'
    Plug 'mhartington/oceanic-next'
    Plug 'junegunn/limelight.vim'
    Plug 'sheerun/vim-polyglot'                             " Better Syntax Support
    Plug 'tpope/vim-haml'                                   " Syntax Haml, Sass, and SCSS 
    Plug 'plasticboy/vim-markdown'                          "mardown syntax
    Plug 'jiangmiao/auto-pairs'                             " Auto pairs for '(' '[' '{'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Completion
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', {'do': { -> fzf#install() } }      " FZF
    Plug 'junegunn/fzf.vim'                                 " FZF
    Plug 'stsewd/fzf-checkout.vim'                          " FZF change branch
    Plug 'airblade/vim-rooter'                              " FZF
    Plug 'alok/notational-fzf-vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
    Plug 'wellle/targets.vim'                               " allows to jump inside ' ) } ]
    Plug 'liuchengxu/vim-which-key'
    Plug 'mhinz/vim-startify'
    Plug 'unblevable/quick-scope'                           " F and f highlight
    Plug 'kana/vim-textobj-user'                            " allows custom text object
    Plug 'kana/vim-textobj-indent'                          " indentation as a text object
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'nvim-lua/popup.nvim'                              " telescope
    Plug 'nvim-lua/plenary.nvim'                            " telescope
    Plug 'nvim-telescope/telescope.nvim'                    " telescope
    Plug 'nvim-telescope/telescope-fzy-native.nvim'         " telescope
    Plug 'junegunn/vim-peekaboo'                            " access to register and macro
    Plug 'vimwiki/vimwiki'                                  " wiki
    Plug 'kshenoy/vim-signature'                            " marks
call plug#end()

let g:vimwiki_list = [{'path':'~/Nextcloud/Documents/obsidian/Cid', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_markdown_link_ext = 1


