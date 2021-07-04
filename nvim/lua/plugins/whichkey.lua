local wk = require("which-key")
-- As an example, we will the create following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1


  require("which-key").setup{
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "top", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
} 



wk.register({
  n = {":let @/ = ''<cr>", "remove Highlight"},
  S = {'yiw:%s/"//gc<left><left><left>', "replace word under cursor"},

  p = {":PrettierAsync<cr>", "Prettier"},
  v = {":vsplit<cr>", "vsplit"},
  h = {":hsplit<cr>", "hsplit"},
  ['E'] = "which_key_ignore",
  ['-'] = {":bprev<cr>", "bprev"},
  ['='] = {":bnext<cr>", "bnext"},
  ['0'] = {"<C-^>", "last tab"},
  c = {
    name = "config", -- optional group name
    n = { ":set relativenumber", "relative numbers"}, 
    l = { ":Limelight!!", "Limelight"}, 
    i = { ":PlugInstall", "install plugins"}, 
    c = { ":PlugClean", "clean plugins"}, 
  },
  f = {
    name = "file", -- optional group name
    f = { ":GFiles<cr>", "Find File" }, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    t = { ":Rg<cr>", "Find Text"}, 
    w = { ":NV<cr>", "Find Wiki"}, 
    n = { "New File" }, -- just a label. don't create any mapping
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
  g = {
    name = "go", -- optional group name
    t = { ":call OpenAndSearch()<CR> ", "Theme"}, 
  },

  m = {
    name = "marks", -- optional group name
    m = { "m,", "place next mark"}, 
    n = { "]`", "go to next mark"}, 
    p = { "[`", "go to previous mark"}, 
  },

  q = {
    name = "quickfix list", -- optional group name
    o = { ":copen<cr>", "open Quickfix List"}, 
    q = { ":cclose<cr>", "close Quickfix List"}, 
    j = { ":cnext<cr>", "next in Quifix list"}, 
    k = { ":cprev<cr>", "previous in Quifix list"}, 
  },


  o = {
    name = "Lines", -- optional group name
    o = { ":call IsolateBracket()<cr>", "add a lign before {"}, 
    ['<Alt-o>'] = { "add empty ligne below" }, -- just a label. don't create any mapping
    ['<Alt-O>'] = { "add empty ligne up" }, -- just a label. don't create any mapping
  },

  s = {
    name = "s+", -- optional group name
    f = { ":so %", "source file"}, 
  },
  
}, { prefix = "<leader>" })





