" # init.vim
scriptencoding utf-8
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/auto.vim
source $HOME/.config/nvim/plug-config/wiki.vim
source $HOME/.config/nvim/plug-config/devdocs.vim
source $HOME/.config/nvim/plug-config/ultisnip.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/toggleterm.vim
source $HOME/.config/nvim/plug-config/marks.vim
source $HOME/.config/nvim/plug-config/ccc.vim
source $HOME/.config/nvim/lua/lspconfig.rc.vim
source $HOME/.config/nvim/plug-config/lualine.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/subversive.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/blankline.vim
source $HOME/.config/nvim/plug-config/autotag.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/emmet.vim
source $HOME/.config/nvim/plug-config/yoink.vim
source $HOME/.config/nvim/plug-config/todo-comment.vim
source $HOME/.config/nvim/plug-config/lion.vim
source $HOME/.config/nvim/plug-config/gitblame.vim
" source $HOME/.config/nvim/plug-config/leap.vim
" source $HOME/.config/nvim/plug-config/leap-spooky.vim
source $HOME/.config/nvim/plug-config/legendary.vim
source $HOME/.config/nvim/plug-config/whichkeylua.vim
source $HOME/.config/nvim/plug-config/dial.vim
source $HOME/.config/nvim/plug-config/trouble.vim
source $HOME/.config/nvim/plug-config/flash.vim
source $HOME/.config/nvim/plug-config/biscuits.vim
" source $HOME/.config/nvim/plug-config/null.vim
" source $HOME/.config/nvim/plug-config/nvimtree.vim
" source $HOME/.config/nvim/plug-config/autopair.vim
lua require('plugins')

source $HOME/.config/nvim/functions/isolatebrackets.vim
source $HOME/.config/nvim/functions/openandsearch.vim
source $HOME/.config/nvim/functions/indentfile.vim
source $HOME/.config/nvim/functions/bookmark.vim

source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/temporaryMappings.vim

if has('mac')
    source $HOME/.config/nvim/general/mac.vim
elseif has('unix')
    source $HOME/.config/nvim/general/linux.vim
endif
