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
  operators = { gc = "Comments", q = "substitution", ys = "add surround"},

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
  [';'] = {"<esc>A;<esc>", "add ;"},
  ['1'] = {":BufferGoto 1<CR>", "which_key_ignore"},
  ['2'] = {":BufferGoto 2<CR>", "which_key_ignore"},
  ['3'] = {":BufferGoto 3<CR>", "which_key_ignore"},
  ['4'] = {":BufferGoto 4<CR>", "which_key_ignore"},
  ['9'] = {":BufferLast<CR>", "which_key_ignore"},
  ['<tab>'] = { "ToggleBiscuit"},
  ['`'] = {"<Plug>Ysurroundiw`", "`"},
  ["'"] = {"<Plug>YsurroundiW'", "`"},
  -- ['E'] = "which_key_ignore",
  -- ['<c-s>'] = "save file",
  -- ['<c-q>'] = "quit buffer",


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

  a = { "<cmd>lua require('plugins.telescope').code_actions()<cr>", "code Actions"}, 
  b = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "buffer "},
  c = {
    name = "Copy", -- optional group name
    d = { ":cd %:p:h<CR>", "moves to the current directory"}, 
    p = { "yap<S-}>p", "copy paragraph under cursor and paste it under"}, 
  },

  d = {
    name = "delete", -- optional group name
    m = { "marks in buffer"}, 
    D = { "ggVGd", "delete content buffer"}, 
  },
  -- e = {"<cmd>lua require('telescope.builtin').file_browser()<cr>", "File Browser"},
  e = {":NvimTreeToggle<CR>", "File Browser"},

  f = {
    name = "File", -- optional group name
    d = { "<cmd>lua require('plugins.telescope').search_docfile()<cr>", "docfiles"}, 
    h = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    p = { "<cmd>lua require('plugins.telescope').search_profiles()<CR>", "search pro maiia"}, 
    w = { "<cmd>lua require('plugins.telescope').search_terminus()<CR>", "search pro maiia"}, 
    r = { "<cmd>lua require('plugins.telescope').search_dotfiles()<CR>", "dotfiles"}, 
    f = {"<cmd>lua require('plugins.telescope').search_gitfiles()<cr>", "searchfiles"},
    -- w = { ":NV!<cr>", "Find Wiki"}, 
  },

  g = {
    name = "GIT & Go", -- optional group name
    t = { ":call OpenAndSearch()<CR> ", "Theme"}, 
    b = { " <cmd>lua require('telescope.builtin').git_branches()<cr>", "branches"}, 
  },
  -- h = {},
  -- i = {
  --   name = "import", -- optional group name
  -- },

  j = {
    name = "jss", -- optional group name
    m = { "makestyle ➜ makestyle + theme"}, 
    c = { "div ➜ div className=''" }, 
    C = { "div ➜ div className={classes." }, 
    e = {"class ➜ '& .class'" }, 
    l = { "className='X' ➜ className={clsx('X'" }, 
    L = { "className={X} ➜ className={clsx(X," }, 
    o = { "div ➜ div className={clsx(" }, 
    s = { "classes.X ➜ 'X'" }, 
    S = { "'X' ➜ classes.X" },
    t = { "makestyle ➜ makestyle(theme)" },
  },

  k = {"Devdocs"},

  l = {
    name = "LSP", -- optional group name
    r = { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "References"}, 
    d = { "<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>", "Diagnostic Doc"}, 
  },

  m = { "add mark"},

  M = {"<cmd>lua require('telescope.builtin').marks()<cr>", "marks"},

  n = {":let @/ = ''<cr>", "remove Highlight"},

  o = {
    name = "Lines", -- optional group name
    o = { ":call IsolateBracket()<cr>", "add a lign before {"}, 
  },


  -- p = {},
  q = {
    name = "quickfix list", -- optional group name
    o = { ":copen<cr>", "open QList"}, 
    q = { ":cclose<cr>", "close QList"}, 
    j = { ":cnext<cr>", "next Qlist"}, 
    k = { ":cprev<cr>", "previous Qlist"}, 
  },


  -- r = {
  --   name = "repeat", -- optional group name
  -- },

  s = {
    name = "s+", -- optional group name
    f = { ":so % <cr>", "source file"},
    s = {'yiw:%s/"//g<left><left>', "replace word under cursor"},
  },

  t = {
    name = "Text", -- optional group name
    f = { ":Rg<cr>", "Fzf Text"}, 
    o = { 
      o = { ":TodoQuickFix<cr>", "FIND TODO"}, 
      d = { "OTODO::Commentary<cr>A", "create Todo"}, 
      f = { "OFIX::Commentary<cr>A", "create Fixme"}, 
      b = { "OBUG::Commentary<cr>A", "create Bug"}, 
      n = { "ONOTE::Commentary<cr>A", "create Note"}, 
      p = { "OPERF::Commentary<cr>A", "create Perf"}, 
      h = { "OHACK::Commentary<cr>A", "create Hack"}, 
      w = { "OWARNING::Commentary<cr>A", "create Warning"}, 
    },
    p = { "paste txt & search" }, 
    t = { ":Telescope live_grep<cr>", "Find Text"}, 
    w = { ":Telescope grep_string<cr>", "Find word under cursor"}, 
    T = { ":call OpenAndSearchPoEditor()<CR> ", "Poeditor"}, 
  },

  T = {":Telescope<cr>", "Telescope"},
  -- u = {},
  v = {":vsplit<cr><C-w><C-w>", "vsplit"},

  w = {
    name = "wiki", -- optional group name
    f = { "<cmd>lua require('plugins.telescope').search_terminus()<CR>", "search terminus"}, 
    w = { "<Plug>VimwikiTabIndex", "Terminus Index"}, 
    d = { "<Plug>VimwikiMakeDiaryNote", "Diary today"}, 
  },

  y = {
    name = "config+", -- optional group name
    c = { "<cmd>lua require('plugins.telescope').search_color()<cr>", "colorscheme"}, 
    o = { 
      name = "options", 
         b = { "background" }, -- just a label. don't create any mapping
         h = { "hard times" }, 
         r = { "relative number" },
         w = { "wrap" }, 
    },
    p = {
      name = "plugins",
         i = { ":PlugInstall<cr>", "Install plugins"}, 
         c = { ":PlugClean<cr>", "clean plugins"}, 
         u = { ":PlugUpdate<cr>", "update plugins"}, 
    }
  },
}, { prefix = "<leader>" })






