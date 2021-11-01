" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
     
    Plug 'SirVer/ultisnips',
    Plug 'jessarcher/vim-heritage',
    Plug 'phaazon/hop.nvim'
    Plug 'code-biscuits/nvim-biscuits',
    Plug 'jiangmiao/auto-pairs'                             " Auto pairs for '(' '[' '{'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', {'do': { -> fzf#install() } }      " FZF
    Plug 'junegunn/fzf.vim'                                 " FZF
    Plug 'airblade/vim-rooter'                              " FZF
    Plug 'wellle/targets.vim'                               " allows to jump inside ' ) } ]
    Plug 'kyazdani42/nvim-web-devicons',                    " telescope devicons
    Plug 'svermeulen/vim-subversive'                        " Substitution
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update 
    Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 
    Plug 'RRethy/nvim-base16'                     
    Plug 'p00f/nvim-ts-rainbow'                             " rainbow paren
    Plug 'kshenoy/vim-signature'                            " marks
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat'
    Plug 'svermeulen/vim-yoink'
    Plug 'windwp/nvim-ts-autotag'
    Plug 'takac/vim-hardtime'                               "prevents from relying on jj too much
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
    " Plug 'vimwiki/vimwiki'                                  " wiki
    " Plug 'alok/notational-fzf-vim'
    " Plug 'junegunn/limelight.vim'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Completion
