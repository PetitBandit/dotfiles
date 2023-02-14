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
    -- padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  },

  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 5, -- spacing between columns
    align = "center", -- align columns left, center or right
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
  ['<C-f>'] = { "grep in Buffers"},
  ['`'] = {"<Plug>Ysurroundiw`", "`"},
  ["'"] = {"<Plug>Ysurroundiw'", "`"},
  -- ['E'] = "which_key_ignore",


  q = {
    name = "quickfix list", -- optional group name
    q = { "<Plug>(qf_qf_toggle)|", "toggle QList"}, 
    j = { ":cnext<cr>", "next Qlist"}, 
    k = { ":cprev<cr>", "previous Qlist"}, 
  },
  w = {
    name = "wiki", -- optional group name
    f = { "<cmd>lua require('plugins.telescope').search_terminus()<CR>", "search terminus"}, 
    w = { "<Plug>VimwikiTabIndex", "Wiki Terminus Index"}, 
    d = { "<Plug>VimwikiMakeDiaryNote", "Wiki Diary TODAY"}, 
    i = {  "Wiki diary index"}, 
  },
  e = {":NvimTreeToggle<CR>", "File Browser"},
  r = {
    name = "Replace", -- optional group name
    f = { "filename" }
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
    t = { ":Telescope live_grep<cr>", "Find Text"}, 
    T = { ":call OpenAndSearchPoEditor()<CR> ", "Poeditor"}, 
    w = { ":Telescope grep_string<cr>", "Find word under cursor"}, 
  },
  T = {":Telescope<cr>", "Telescope"},

  y = {
    name = "config+", -- optional group name
    c = { "<cmd>lua require('plugins.telescope').search_color()<cr>", "colorscheme"}, 
    h = { ":CccHighlighterToggle<CR>", "highlight colors"}, 
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
  -- u = {},
  -- i = {
  --   name = "import", -- optional group name
  -- },
  o = {
    name = "Lines", -- optional group name
    o = { ":call IsolateBracket()<cr>", "add a lign before {"}, 
  },
  p = {"<cmd>lua vim.lsp.buf.format({ async = false })<CR", "format"},
  a = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "code actions "},
  s = {
    name = "Substitute or source", -- optional group name
    f = { ":so % <cr>", "source file"},
    s = {'yiw:%s/"//g<left><left>', "replace word under cursor"},
  },

  d = {
    name = "delete", -- optional group name
    m = { "marks in buffer"}, 
    D = { "ggVGd", "delete content buffer"}, 
  },

  f = {
    name = "File", -- optional group name
    d = { "<cmd>lua require('plugins.telescope').search_docfile()<cr>", "docfiles"}, 
    h = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    p = { "<cmd>lua require('plugins.telescope').search_profiles()<CR>", "search pro maiia"}, 
    i = { "<cmd>lua require('plugins.telescope').search_proIcons()<CR>", "search pro icons maiia"}, 
    w = { "<cmd>lua require('plugins.telescope').search_terminus()<CR>", "search terminus"}, 
    r = { "<cmd>lua require('plugins.telescope').search_dotfiles()<CR>", "dotfiles"}, 
    f = {"<cmd>lua require('plugins.telescope').search_gitfiles()<cr>", "searchfiles"},
    -- w = { ":NV!<cr>", "Find Wiki"}, 
  },
  F = {":Telescope resume<CR>", "Telescope repeat"},
  g = {
    name = "GIT & Go", -- optional group name
    t = { ":call OpenAndSearch()<CR> ", "Theme"}, 
    b = { ":GitBlameToggle<CR>", "doc blame"}, 
    B = { " <cmd>lua require('telescope.builtin').git_branches()<cr>", "branches"}, 
    c = { ":Git blame<CR>", "full doc blame"}, 
    r = {  "Lsp Ref"}, -- telescope.vim
  },
  -- h = {},
  j = {
    name = "jss", -- optional group name
    m = { "makestyle ➜ makestyle + theme"}, 
    c = { "div ➜ div className=''" }, 
    C = { "div ➜ div className={classes." }, 
    e = {"class ➜ '& .class'" }, 
    l = { "className='X' ➜ className={clsx('X'" }, 
    L = { "className={X} ➜ className={clsx(X," }, 
    o = { "div ➜ div className={clsx(" }, 
    S = { "classes.X ➜ 'X'" }, 
    s = { "'X' ➜ classes.X" },
    t = { "makestyle ➜ makestyle(theme)" },
    i = { 
      name = "imports", -- optional group name
      m = { "makestyle" },
      c = {"clsx"}
        }, 
  },

  k = {"Devdocs"},

  l = {
    name = "LSP", -- optional group name
    a = { "actions" }, 
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename"}, 
    n = { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "References"}, 
    d = { "<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>", "Diagnostic Doc"}, 
  },

  -- z = {"Devdocs"},
  -- x = {"Devdocs"},
  x = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Harpoon add file"}, 

  c = {
    name = "Copy", -- optional group name
    c= {":CccConvert<CR>:CccConvert<CR>"},
    C = {":CccPick<CR>", "colorPicker"},
    d = { ":cd %:p:h<CR>", "moves to the current directory"}, 
    p = { "yap<S-}>p", "copy paragraph under cursor and paste it under"}, 
  },

  v = {":vsplit<cr><C-w><C-w>", "vsplit"},

  b = {"<cmd>lua require('telescope.builtin').buffers()<cr>", "buffer "},

  n = {":let @/ = ''<cr>", "remove Highlight"},

  m = { "add mark"},
  M = {"<cmd>lua require('telescope.builtin').marks()<cr>", "marks"},

}, { prefix = "<leader>" })






