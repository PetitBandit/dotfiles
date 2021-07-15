local wk = require("which-key")


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
  -- operators = { gc = "Comments", ss = "substitution", ys = "add surround"},

  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },


  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },


  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
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
  ['-'] = {":bprev<cr>", "bprev"},
  ['='] = {":bnext<cr>", "bnext"},
  ['0'] = {"<C-^>", "last tab"},
  ['1'] = {"<Plug>AirlineSelectTab1", "which_key_ignore"},
  ['2'] = {"<Plug>AirlineSelectTab2", "which_key_ignore"},
  ['3'] = {"<Plug>AirlineSelectTab3", "which_key_ignore"},
  ['4'] = {"<Plug>AirlineSelectTab4", "which_key_ignore"},
  ['<tab>'] = {"<C-^>", "previous tab"},
  ['E'] = "which_key_ignore",

  ['['] = {
  name = "up/previous", -- optional group name
  ['<spc>'] = { "add empty ligne up" }, -- just a label. don't create any mapping
  ['e'] = { "move lign up" }, -- just a label. don't create any mapping
  ['q'] = { "next QList" }, -- just a label. don't create any mapping
  ['b'] = { "next buffer" }, -- just a label. don't create any mapping
  ['B'] = { "First buffer" }, -- just a label. don't create any mapping
  },
  
  [']'] = {
  name = "below/next", -- optional group name
  ['<spc>'] = { "add empty ligne below" }, -- just a label. don't create any mapping
  ['e'] = { "move lign below" }, -- just a label. don't create any mapping
  ['q'] = { "previous QList" }, -- just a label. don't create any mapping
  ['b'] = { "previous buffer" }, -- just a label. don't create any mapping
  ['B'] = { "last buffer" }, -- just a label. don't create any mapping
  },

  f = {
    name = "file", -- optional group name
    d = { "<cmd>lua require('plugins.telescope').search_docfile()<cr>", "docfiles"}, 
    B = { ":GBranches<cr>", "Branches"}, 
    b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Branches"}, 
    f = { ":GFiles<cr>", "Find File" }, -- create a binding with label
    p = { "<cmd>lua require('plugins.telescope').search_profiles", "search pro maiia"}, 
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    t = { ":Rg<cr>", "Find Text"}, 
    w = { ":NV<cr>", "Find Wiki"}, 
  },

  g = {
    name = "go", -- optional group name
    t = { ":call OpenAndSearch()<CR> ", "Theme"}, 
  },

  h = {":hsplit<cr>", "hsplit"},

  m = {
    name = "marks", -- optional group name
    m = { "m,", "m, place next mark"}, 
    n = { "]`", "]` go to next mark"}, 
    p = { "[`", "[` go to previous mark"}, 
  },

  n = {":let @/ = ''<cr>", "remove Highlight"},

  o = {
    name = "Lines", -- optional group name
    o = { ":call IsolateBracket()<cr>", "add a lign before {"}, 

  },

  p = {":PrettierAsync<cr>", "Prettier"},

  q = {
    name = "quickfix list", -- optional group name
    o = { ":copen<cr>", "open QList"}, 
    q = { ":cclose<cr>", "close QList"}, 
    j = { ":cnext<cr>", "next Qlist"}, 
    k = { ":cprev<cr>", "previous Qlist"}, 
  },

  s = {
    name = "s+", -- optional group name
    f = { ":so % <cr>", "source file"}, 
    b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },

  S = {'yiw:%s/"//gc<left><left><left>', "replace word under cursor"},
  T = {":Telescope<cr>", "Telescope"},
  v = {":vsplit<cr><C-w>l", "vsplit"},

  y = {
    name = "config+", -- optional group name
    ['ob'] = { "background" }, -- just a label. don't create any mapping
    ['oc'] = { "cursorline" }, -- just a label. don't create any mapping
    ['ol'] = { ":Limelight!!<cr>", "Limelight"}, 
    ['or'] = { "numbers" }, -- just a label. don't create any mapping
    ['ow'] = { "wrap" }, -- just a label. don't create any mapping
    ['pi'] = { ":PlugInstall<cr>", "Install plugins"}, 
    ['pc'] = { ":PlugClean<cr>", "clean plugins"}, 
  },
}, { prefix = "<leader>" })






