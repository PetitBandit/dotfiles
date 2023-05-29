
let g:lua_tree_bindings = {
\ 'close_node': 'h',
\ 'edit': 'l',
\ }
" let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
" let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.



set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon guibg=blue



lua << EOF
local g = vim.g
local tree_cb = require "nvim-tree.config".nvim_tree_callback
local list = {
  { key = "?",     cb = tree_cb("toggle_help") },
  { key = {"l"}, cb = tree_cb("edit") },
  { key = {"h"}, cb = tree_cb("close_node") },
  { key = "y",   cb = tree_cb("copy") },
  { key = "c", cb = tree_cb("copy_name") },
  { key = "s", cb = '' },
}
-- following options are the default
require'nvim-tree'.setup {
  -- disables netrw completely
  actions = { 
    open_file = { 
      quit_on_open = true,
      }
    },
  renderer = { 
  highlight_git = true, 
  add_trailing = true, 
  highlight_opened_files = 'all', 
  icons = { 
    glyphs = { 

      },
    show = { 
      git = true,
      }
    },
  special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
    },
    respect_buf_cwd = true, 
  disable_netrw       = true, -- hijack netrw window on startup
  hijack_netrw        = true, -- open the tree when running this setup function
  open_on_setup       = false,
  -- will not open on setup if the filetype is in this list
  ignore_ft_on_setup  = {},
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  -- auto_close          = false,
  -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  open_on_tab         = false,
  -- hijacks new directory buffers when they are opened.

  -- update_to_buf_dir   = {
  --   -- enable the feature
  --   enable = true,
  --   -- allow to open the tree if it was previously closed
  --   auto_open = true,
  -- },

  -- hijack the cursor in the tree to put it at the start of the filename
  hijack_cursor       = false,
  -- updates the root directory of the tree on `DirChanged` (when you run `:cd` usually)
  update_cwd          = false,
  -- show lsp diagnostics in the signcolumn
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    -- enables the feature
    enable      = true,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd  = false,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd  = nil,
    -- the command arguments as a list
    args = {}
  },

  view = {
    -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 30,
    -- Hide the root path of the current folder on top of the tree 
    hide_root_folder = false,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- if true the tree will resize itself after opening a file
    -- auto_resize = false,

    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      list = list
      -- list of mappings to set on the tree manually
    }

  },
filters = { 
  dotfiles = false,
  }
}
EOF
