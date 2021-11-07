" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
     
  Plug 'romgrk/barbar.nvim'
  Plug 'rhysd/devdocs.vim'
  Plug 'kevinhwang91/rnvimr'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'SirVer/ultisnips',
  Plug 'tweekmonster/startuptime.vim',
  " Plug 'justinmk/vim-sneak',
  Plug 'jessarcher/vim-heritage',
  Plug 'phaazon/hop.nvim'
  Plug 'code-biscuits/nvim-biscuits',
  Plug 'gruvbox-community/gruvbox',
  Plug 'mhartington/oceanic-next'
  Plug 'jiangmiao/auto-pairs'                             " Auto pairs for '(' '[' '{'
  Plug 'alok/notational-fzf-vim'
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
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update 
  Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
  Plug 'RRethy/nvim-base16'                     
  Plug 'folke/which-key.nvim'
  Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
  Plug 'chentau/marks.nvim'                            " marks
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'svermeulen/vim-yoink'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'takac/vim-hardtime'                               "prevents from relying on jj too much
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-lua/plenary.nvim' "Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'akinsho/toggleterm.nvim' "toggleterm
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'onsails/lspkind-nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'ThePrimeagen/harpoon'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    call plug#end()

let g:vimwiki_list = [{'path':'~/Sync/Documents/obsidian/Cid', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_markdown_link_ext = 1

"retired plugins
"
    " Plug 'junegunn/limelight.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Completion
