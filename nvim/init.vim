" # init.vim
scriptencoding utf-8
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general/settings.vim

source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/lightspeed.vim
" source $HOME/.config/nvim/plug-config/telescope.vim
" source $HOME/.config/nvim/plug-config/hop.vim
source $HOME/.config/nvim/plug-config/colorizer.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/notational.vim
source $HOME/.config/nvim/plug-config/subversive.vim
source $HOME/.config/nvim/plug-config/autopair.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/autotag.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/whichkeylua.vim
source $HOME/.config/nvim/plug-config/emmet.vim
source $HOME/.config/nvim/plug-config/yoink.vim
source $HOME/.config/nvim/plug-config/hardtime.vim
lua require('plugins')

source $HOME/.config/nvim/functions/isolatebrackets.vim
source $HOME/.config/nvim/functions/openandsearch.vim
source $HOME/.config/nvim/functions/indentfile.vim

source $HOME/.config/nvim/themes/airline.vim


source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/temporaryMappings.vim

if has('mac')
    source $HOME/.config/nvim/general/mac.vim
elseif has('unix')
    source $HOME/.config/nvim/general/linux.vim
endif

