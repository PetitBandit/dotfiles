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
    Plug 'kyazdani42/nvim-web-devicons',                    " telescope devicons
    Plug 'vimwiki/vimwiki'                                  " wiki
    Plug 'svermeulen/vim-subversive'                        " Substitution
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update 
    Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
    Plug 'RRethy/nvim-base16'                     
    Plug 'folke/which-key.nvim'
    Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
    Plug 'kshenoy/vim-signature'                            " marks
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat'
    Plug 'rafcamlet/nvim-luapad'
    Plug 'svermeulen/vim-yoink'
    Plug 'windwp/nvim-ts-autotag'
    Plug 'ggandor/lightspeed.nvim'
    Plug 'takac/vim-hardtime'                               "prevents from relying on jj too much
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim' "Telescope
    Plug 'akinsho/toggleterm.nvim' "toggleterm
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    call plug#end()

let g:vimwiki_list = [{'path':'~/Sync/Documents/obsidian/Cid', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_markdown_link_ext = 1

"retired plugins
"
    " Plug 'phaazon/hop.nvim'                                 " text navigation
    " Plug 'sheerun/vim-polyglot'                             " Better Syntax Support
