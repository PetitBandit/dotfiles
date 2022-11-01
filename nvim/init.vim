" # init.vim
"
scriptencoding utf-8
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/auto.vim

source $HOME/.config/nvim/plug-config/wiki.vim
source $HOME/.config/nvim/plug-config/devdocs.vim
source $HOME/.config/nvim/plug-config/ultisnip.vim
source $HOME/.config/nvim/plug-config/hop.vim
source $HOME/.config/nvim/plug-config/barbar.vim
source $HOME/.config/nvim/plug-config/toggleterm.vim
source $HOME/.config/nvim/plug-config/marks.vim
source $HOME/.config/nvim/lua/lspconfig.rc.vim
source $HOME/.config/nvim/plug-config/lualine.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/colorizer.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/biscuits.vim
source $HOME/.config/nvim/plug-config/subversive.vim
source $HOME/.config/nvim/plug-config/autopair.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/blankline.vim
source $HOME/.config/nvim/plug-config/nvimtree.vim
source $HOME/.config/nvim/plug-config/autotag.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/whichkeylua.vim
source $HOME/.config/nvim/plug-config/emmet.vim
source $HOME/.config/nvim/plug-config/yoink.vim
source $HOME/.config/nvim/plug-config/todo-comment.vim
source $HOME/.config/nvim/plug-config/lion.vim
source $HOME/.config/nvim/plug-config/gitblame.vim
" source $HOME/.config/nvim/plug-config/treesitter-context.vim
" source $HOME/.config/nvim/plug-config/hardtime.vim
" source $HOME/.config/nvim/plug-config/harpoon.vim TODO: remove this
lua require('plugins')

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

lua require('leap').add_default_mappings() 

lua << EOF
require('leap-spooky').setup {
  affixes = {
    -- These will generate mappings for all native text objects, like:
    -- ir{obj}, ar{obj}, iR{obj}, aR{obj}, etc.
    -- Special "remote" line objects will also be added, by repeating the
    -- affixes. E.g. `yrr<leap>` will yank a line in the current window.
    window       = 'r',
    cross_window = 'R',
  },
  -- If this option is set to true, the yanked text will automatically be pasted
  -- at the cursor position if the unnamed register is in use.
  yank_paste = false,
  -- Call-specific overrides for the Leap motion itself.
  -- E.g.: opts = { equivalence_classes = {} }
  opts = nil,
}
EOF
