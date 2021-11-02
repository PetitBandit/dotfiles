" # init.vim
scriptencoding utf-8
" source $HOME/.config/nvim/plugins.vim
let dir = '$HOME/dotfiles/nvim/plug-config/'
call plug#begin('~/.config/nvim/autoload/plugged')
  source $HOME/dotfiles/nvim/plug-config/start-screen.vim
  source $HOME/dotfiles/nvim/plug-config/themes.vim
  source $HOME/.config/nvim/plug-config/quickscope.vim
  source $HOME/.config/nvim/plug-config/commentary.vim
  source $HOME/.config/nvim/plug-config/surround.vim
  source $HOME/.config/nvim/plug-config/emmet.vim
  source $HOME/.config/nvim/plug-config/autopair.vim
  source $HOME/.config/nvim/plug-config/unimpaired.vim
  source $HOME/.config/nvim/plug-config/repeat.vim
  source $HOME/.config/nvim/plug-config/yoink.vim
  source $HOME/.config/nvim/plug-config/signature.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/heritage.vim
  source $HOME/.config/nvim/plug-config/hop.vim
  source $HOME/.config/nvim/plug-config/subversive.vim
  source $HOME/.config/nvim/plug-config/airline.vim
  source $HOME/.config/nvim/plug-config/targets.vim
  source $HOME/.config/nvim/plug-config/fugitive.vim
  source $HOME/.config/nvim/plug-config/devicons.vim
  source $HOME/.config/nvim/plug-config/treesitter.vim
  " source $HOME/.config/nvim/plug-config/colorizer.vim
  " source $HOME/.config/nvim/plug-config/biscuits.vim
  " source $HOME/.config/nvim/plug-config/telescope.vim
  " source $HOME/.config/nvim/plug-config/whichkey.vim 
call plug#end()
doautocmd User PlugLoaded

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/auto.vim
" source $HOME/.config/nvim/lua/lspconfig.rc.vim
" " source $HOME/.config/nvim/plug-config/nvimtree.vim
" source $HOME/.config/nvim/plug-config/autotag.vim
" source $HOME/.config/nvim/plug-config/hardtime.vim
" source $HOME/.config/nvim/plug-config/harpoon.vim
" source $HOME/.config/nvim/plug-config/notational.vim
" source $HOME/.config/nvim/plug-config/rainbow.vim
" source $HOME/.config/nvim/plug-config/toggleterm.vim
" source $HOME/.config/nvim/plug-config/ultisnip.vim
" lua require('plugins')

source $HOME/.config/nvim/functions/isolatebrackets.vim
source $HOME/.config/nvim/functions/openandsearch.vim
source $HOME/.config/nvim/functions/indentfile.vim



source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/temporaryMappings.vim

if has('mac')
    source $HOME/.config/nvim/general/mac.vim
elseif has('unix')
    source $HOME/.config/nvim/general/linux.vim
endif


