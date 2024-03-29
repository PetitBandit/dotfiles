" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'stevearc/dressing.nvim'
  Plug 'MunifTanjim/nui.nvim'
  Plug 'nvim-neo-tree/neo-tree.nvim'
  Plug 'folke/trouble.nvim'
  " Plug 'folke/flash.nvim'
  Plug 'folke/todo-comments.nvim'
  Plug 'smoka7/hop.nvim'
  Plug 'monaqa/dial.nvim'
  Plug 'kkharji/sqlite.lua'
  Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
  Plug 'lukas-reineke/indent-blankline.nvim'              "show context
  Plug 'f-person/git-blame.nvim'
  Plug 'ggandor/leap.nvim'
  Plug 'ggandor/leap-spooky.nvim'
  Plug 'williamboman/mason.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'nvim-telescope/telescope-ui-select.nvim'
  Plug 'romainl/vim-qf'
  Plug 'romgrk/barbar.nvim'
  Plug 'rhysd/devdocs.vim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'SirVer/ultisnips',
  Plug 'jessarcher/vim-heritage',
  Plug 'b4skyx/serenade'                                  "theme
  Plug 'gruvbox-community/gruvbox',                       "theme
  Plug 'mhartington/oceanic-next'                         "theme
  Plug 'sainnhe/everforest'                               "theme
  Plug 'RRethy/nvim-base16'                               "theme
  Plug 'junegunn/fzf', {'do': { -> fzf#install() } }      " FZF
  Plug 'junegunn/fzf.vim'                                 " FZF
  Plug 'vimwiki/vimwiki'                                  " wiki
  Plug 'airblade/vim-rooter'                              " FZF
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'wellle/targets.vim'                               " allows to jump inside ' ) } ]
  Plug 'mhinz/vim-startify'
  Plug 'unblevable/quick-scope'                           " F and f highlight
  Plug 'kyazdani42/nvim-web-devicons',                    " telescope devicons
  Plug 'svermeulen/vim-subversive'                        " Substitution
  Plug 'folke/which-key.nvim'
  Plug 'mrjones2014/legendary.nvim'
  Plug 'chentoast/marks.nvim'                            " marks
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'svermeulen/vim-yoink'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-lua/plenary.nvim' "Telescope
  " Plug 'nvim-lua/popup.nvim'
  Plug 'akinsho/toggleterm.nvim' "toggleterm
  Plug 'tommcdo/vim-lion'
  Plug 'neovim/nvim-lspconfig'
  Plug 'uga-rosa/ccc.nvim'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
  Plug 'onsails/lspkind-nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'sindrets/diffview.nvim'
  " Plug 'code-biscuits/nvim-biscuits', {'do': ':TSUpdate'}
  " Plug 'junegunn/limelight.vim'
  " Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors
  " Plug 'hrsh7th/cmp-path'
  " Plug 'jiangmiao/auto-pairs'                             " Auto pairs for '(' '[' '{'
    call plug#end()


"retired plugins
"
  lua require('Comment').setup()
  lua require("mason").setup()
