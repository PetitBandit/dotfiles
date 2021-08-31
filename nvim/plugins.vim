" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
     
    Plug 'SirVer/ultisnips',
    Plug 'gruvbox-community/gruvbox',
    Plug 'mhartington/oceanic-next'
    Plug 'junegunn/limelight.vim'
    " Plug 'sheerun/vim-polyglot'                             " Better Syntax Support
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
    Plug 'wellle/targets.vim'                               " allows to jump inside ' ) } ]
    Plug 'mhinz/vim-startify'
    Plug 'unblevable/quick-scope'                           " F and f highlight
    Plug 'nvim-lua/popup.nvim'                              " telescope
    Plug 'nvim-lua/plenary.nvim'                            " telescope
    Plug 'nvim-telescope/telescope.nvim'                    " telescope
    Plug 'kyazdani42/nvim-web-devicons',                    " telescope devicons
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'vimwiki/vimwiki'                                  " wiki
    Plug 'svermeulen/vim-subversive'                        " Substitution
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update 
    Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
    Plug 'RRethy/nvim-base16'                     
    Plug 'phaazon/hop.nvim'                                 " text navigation
    Plug 'folke/which-key.nvim'
    Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
    Plug 'kshenoy/vim-signature'                            " marks
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-unimpaired'
    Plug 'svermeulen/vim-yoink'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    call plug#end()

let g:vimwiki_list = [{'path':'~/Sync/Documents/obsidian/Cid', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_markdown_link_ext = 1

