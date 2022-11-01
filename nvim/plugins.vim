" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
     
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update 
  Plug 'nvim-treesitter/nvim-treesitter', {'commit': '9bfaf62e42bdcd042df1230e9188487e62a112c0'}
  Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
  Plug 'lukas-reineke/indent-blankline.nvim'              "show context
  Plug 'f-person/git-blame.nvim'
  Plug 'ggandor/leap.nvim'
  Plug 'ggandor/leap-spooky.nvim'
  Plug 'williamboman/mason.nvim'
  Plug 'EtiamNullam/gradual-undo.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'nvim-telescope/telescope-ui-select.nvim'
  Plug 'romainl/vim-qf'
  Plug 'romgrk/barbar.nvim'
  Plug 'junegunn/limelight.vim'
  Plug 'b4skyx/serenade'
  Plug 'rhysd/devdocs.vim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'SirVer/ultisnips',
  Plug 'tweekmonster/startuptime.vim',
  Plug 'jessarcher/vim-heritage',
  Plug 'phaazon/hop.nvim'
  Plug 'code-biscuits/nvim-biscuits', {'branch': 'feature-html-only-decorate-elements'}
  Plug 'gruvbox-community/gruvbox',                       "theme
  Plug 'mhartington/oceanic-next'                         "theme
  Plug 'sainnhe/everforest'                               "theme
  Plug 'jiangmiao/auto-pairs'                             " Auto pairs for '(' '[' '{'
  Plug 'junegunn/fzf', {'do': { -> fzf#install() } }      " FZF
  Plug 'vimwiki/vimwiki'                                  " wiki
  Plug 'junegunn/fzf.vim'                                 " FZF
  Plug 'airblade/vim-rooter'                              " FZF
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'wellle/targets.vim'                               " allows to jump inside ' ) } ]
  Plug 'mhinz/vim-startify'
  Plug 'unblevable/quick-scope'                           " F and f highlight
  Plug 'kyazdani42/nvim-web-devicons',                    " telescope devicons
  Plug 'svermeulen/vim-subversive'                        " Substitution
  Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
  Plug 'RRethy/nvim-base16'                     
  Plug 'folke/which-key.nvim'
  Plug 'chentoast/marks.nvim'                            " marks
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'svermeulen/vim-yoink'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-lua/plenary.nvim' "Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'akinsho/toggleterm.nvim' "toggleterm
  Plug 'tommcdo/vim-lion'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  " Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  Plug 'onsails/lspkind-nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'folke/todo-comments.nvim'
  Plug 'sindrets/diffview.nvim'
    call plug#end()


"retired plugins
"
  lua require('Comment').setup()
  lua require('gradual-undo').setup()
  lua require("mason").setup()
