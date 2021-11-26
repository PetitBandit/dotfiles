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
  ['-'] = {":BufferPrevious<CR>", "bprev"},
  ['='] = {":BufferNext<CR>", "bnext"},
  ['0'] = {"<C-^>", "last tab"},
  [','] = {"<esc>A,<esc>", "add ,"},
  ['1'] = {":BufferGoto 1<CR>", "which_key_ignore"},
  ['2'] = {":BufferGoto 2<CR>", "which_key_ignore"},
  ['3'] = {":BufferGoto 3<CR>", "which_key_ignore"},
  ['4'] = {":BufferGoto 4<CR>", "which_key_ignore"},
  ['9'] = {":BufferLast<CR>", "which_key_ignore"},
  ['<tab>'] = { "ToggleBiscuit"},
  ['b'] = {":BufferPick<CR>", "buf pick"},
  -- ['E'] = "which_key_ignore",
  ['<c-s>'] = "save file",
  ['<c-q>'] = "quit buffer",
  ['<c-/>'] = "search line in current file",


  ['['] = {
  name = "up/previous", -- optional group name
  ['<spc>'] = { "add empty ligne up" }, -- just a label. don't create any mapping
  ['e'] = { "move lign up" }, 
  ['q'] = { "next QList" }, 
  ['b'] = { "next buffer" },
  ['B'] = { "First buffer" },
  },
  
  [']'] = {
  name = "below/next", -- optional group name
  ['<spc>'] = { "add empty ligne below" }, -- just a label. don't create any mapping
  ['e'] = { "move lign below" }, 
  ['q'] = { "previous QList" }, 
  ['b'] = { "previous buffer" }, 
  ['B'] = { "which_key_ignore" },
  },

  c = {
    name = "class", -- optional group name

    a = { "<cmd>lua require('plugins.telescope').search_actions()<cr>", "code Actions"}, -- just a label. don't create any mapping
    c = { "div ➜ div className=''" }, -- just a label. don't create any mapping
    C = { "div ➜ div className={classes." }, 
    o = { "div ➜ div className={clsx(" }, 
    l = { "className='to' ➜ className={clsx('to'" }, 
    L = { "className={test} ➜ className={clsx(test," }, 
    s = { "classes.tomate ➜ 'tomate'" }, 
    S = { "'tomate' ➜ classes.tomate" },
    e = {"class ➜ '& .class'" }, 
  },

  f = {
    name = "file", -- optional group name
    b = { ":Buffers<cr>", "buffers"}, 
    f = { ":GFiles<cr>", "Find File" }, -- create a binding with label
    h = { ":History<cr>", "recent files" }, 
    t = { ":Rg<cr>", "Find Text"}, 
    w = { ":NV!<cr>", "Find Wiki"}, 
    l = { ":Lines<cr>", "lines in buffers"}, 
    m = { ":Marks<cr>", "Marks"}, 
  },

  g = {
    name = "go", -- optional group name
    t = { ":call OpenAndSearch()<CR> ", "Theme"}, 
    b = { " <cmd>lua require('telescope.builtin').git_branches()<cr>", "branches"}, 
  },




  i = {
    name = "import", -- optional group name
    c = { "add the import of clsx"}, 
  },

  j = {
    name = "jss", -- optional group name
    a = {
name ='test',
    },
    c = { "add the import of clsx"}, 
    ['tc'] = { "makestyle ➜ makestyle + theme" }, -- just a label. don't create any mapping
  },

  m = {
    name = "marks", -- optional group name
    m = { "m,", "m, place next mark"}, 
    n = { "]`", "]` go to next mark"}, 
    p = { "[`", "[` go to previous mark"}, 
  },

  l = {
    name = "lists - sort", -- optional group name
    s = {  "sort alpha"}, 
    S = {  "sort backward"}, 
    d = {  "sort & del dupli"}, 
    D = {  "sort backward & del dupli"}, 
  },

  n = {":let @/ = ''<cr>", "remove Highlight"},

  o = {
    name = "Lines", -- optional group name
    o = { ":call IsolateBracket()<cr>", "add a lign before {"}, 
  },


  q = {
    name = "quickfix list", -- optional group name
    o = { ":copen<cr>", "open QList"}, 
    q = { ":cclose<cr>", "close QList"}, 
    j = { ":cnext<cr>", "next Qlist"}, 
    k = { ":cprev<cr>", "previous Qlist"}, 
  },

  w = {
    name = "wiki", -- optional group name
  },

  -- r = {
  --   name = "repeat", -- optional group name
  -- },

  s = {
    name = "s+", -- optional group name
    f = { ":so % <cr>", "source file"}, 
    d = { "<cmd>lua require('plugins.telescope').search_docfile()<cr>", "docfiles"}, 
    c = { "<cmd>lua require('plugins.telescope').search_color()<cr>", "docfiles"}, 
    s = { ":SSave<cr>", "saves Session"}, 
    h = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    p = { "<cmd>lua require('plugins.telescope').search_profiles()<CR>", "search pro maiia"}, 
    r = { "<cmd>lua require('plugins.telescope').search_dotfiles()<CR>", "dotfiles"}, 
    t = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "text"}, 
  },

  M = {"<cmd>lua require('telescope.builtin').marks()<cr>", "marks"},
  S = {'yiw:%s/"//g<left><left>', "replace word under cursor"},
  T = {":Telescope<cr>", "Telescope"},
  v = {":vsplit<cr><C-w>l", "vsplit"},
  t = {"<leader>t <cmd>lua require('plugins.telescope').search_gitfiles()<cr>", "searchfiles"},

  y = {
    name = "config+", -- optional group name
    ['ob'] = { "background" }, -- just a label. don't create any mapping
    ['oh'] = { "hard times" }, 
    ['oc'] = { "cursorline" },
    ['ow'] = { "wrap" }, 
    p = {
      name = "plugins",
    i = { ":PlugInstall<cr>", "Install plugins"}, 
    c = { ":PlugClean<cr>", "clean plugins"}, 
    u = { ":PlugUpdate<cr>", "update plugins"}, 
    }
  },
}, { prefix = "<leader>" })






