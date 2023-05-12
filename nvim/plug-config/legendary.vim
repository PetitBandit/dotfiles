
nnoremap <C-p> :Legendary<CR>
lua <<EOF
  require('dressing').setup({
    input = {
      -- Set to false to disable the vim.ui.input implementation
      enabled = true,

      -- Default prompt string
      default_prompt = "Input:",

      -- Can be 'left', 'right', or 'center'
      -- prompt_align = "center",
      prompt_align = "left",

      -- When true, <Esc> will close the modal
      insert_only = true,

      -- When true, input will start in insert mode.
      start_in_insert = true,

      -- These are passed to nvim_open_win
      anchor = "SW",
      border = "rounded",
      -- 'editor' and 'win' will default to being centered
      relative = "cursor",

      -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
      prefer_width = 40,
      width = nil,
      -- min_width and max_width can be a list of mixed types.
      -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
      max_width = { 140, 0.9 },
      min_width = { 20, 0.2 },

      buf_options = {},
      win_options = {
        -- Window transparency (0-100)
        winblend = 10,
        -- Disable line wrapping
        wrap = false,
      },

      -- Set to `false` to disable
      mappings = {
        n = {
          ["<Esc>"] = "Close",
          ["<CR>"] = "Confirm",
        },
        i = {
          ["<C-c>"] = "Close",
          ["<CR>"] = "Confirm",
          ["<Up>"] = "HistoryPrev",
          ["<Down>"] = "HistoryNext",
        },
      },

      override = function(conf)
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        return conf
      end,

      -- see :help dressing_get_config
      get_config = nil,
    },
   select = {
     get_config = function(opts)
       if opts.kind == 'legendary.nvim' then
         return {
             -- telescope = require("telescope.themes").get_cursor(),
           telescope = {
             -- sorter = require('telescope.sorters').fuzzy_with_index_bias({}),

             -- layout_config = { 
             --   height = 10, 
             --   width = 0.8,
             --   }, 


              -- sorting_strategy = "descending", 
              -- layout_strategy = "vertical", 
              -- theme = "ivy"        
              -- theme = "cursor"        
              initial_mode = "insert",
                  selection_strategy = "reset",
                  sorting_strategy = "ascending",
                  layout_strategy = "horizontal",
                  layout_config = {
                    horizontal = {
                      prompt_position = "top",
                      preview_width = 0.55,
                    },
                    vertical = {
                      mirror = false,
                    },
                    width = 0.87,
                    height = 0.50,
                    preview_cutoff = 120,
                  },
                  path_display = { "truncate" },
                      winblend = 0,
                      border = {},
                      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                      color_devicons = true,
                      set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
           }
         }
       else
         return {}
       end
     end
   }
  })

require('legendary').setup({
  -- Initial keymaps to bind
  keymaps = {},
  -- Initial commands to bind
  commands = { 
      { ':CccConvert', ':echo "something"', description = 'convert colors' },
    },
  -- Initial augroups/autocmds to bind
  autocmds = {},
  -- Initial functions to bind
  funcs = {},
  -- Initial item groups to bind,
  -- note that item groups can also
  -- be under keymaps, commands, autocmds, or funcs
  itemgroups = {},
  -- default opts to merge with the `opts` table
  -- of each individual item
  default_opts = {
    keymaps = {},
    commands = {},
    autocmds = {},
  },
  -- Customize the prompt that appears on your vim.ui.select() handler
  -- Can be a string or a function that returns a string.
  select_prompt = ' legendary.nvim ',
  -- Character to use to separate columns in the UI
  col_separator_char = '│',
  -- Optionally pass a custom formatter function. This function
  -- receives the item as a parameter and the mode that legendary
  -- was triggered from (e.g. `function(item, mode): string[]`)
  -- and must return a table of non-nil string values for display.
  -- It must return the same number of values for each item to work correctly.
  -- The values will be used as column values when formatted.
  -- See function `default_format(item)` in
  -- `lua/legendary/ui/format.lua` to see default implementation.
  default_item_formatter = nil,
  -- Include builtins by default, set to false to disable
  include_builtin = true,
  -- Include the commands that legendary.nvim creates itself
  -- in the legend by default, set to false to disable
  include_legendary_cmds = true,
  -- Options for list sorting. Note that fuzzy-finders will still
  -- do their own sorting. For telescope.nvim, you can set it to use
  -- `require('telescope.sorters').fuzzy_with_index_bias({})` when
  -- triggered via `legendary.nvim`. Example config for `dressing.nvim`:
  --
  -- require('dressing').setup({
  --  select = {
  --    get_config = function(opts)
  --      if opts.kind == 'legendary.nvim' then
  --        return {
  --          telescope = {
  --            sorter = require('telescope.sorters').fuzzy_with_index_bias({})
  --          }
  --        }
  --      else
  --        return {}
  --      end
  --    end
  --  }
  -- })
  sort = {
    -- sort most recently used item to the top
    most_recent_first = true,
    -- sort user-defined items before built-in items
    user_items_first = true,
    -- sort the specified item type before other item types,
    -- value must be one of: 'keymap', 'command', 'autocmd', 'group', nil
    item_type_bias = nil,
    -- settings for frecency sorting.
    -- https://en.wikipedia.org/wiki/Frecency
    -- Set `frecency = false` to disable.
    -- this feature requires sqlite.lua (https://github.com/tami5/sqlite.lua)
    -- and will be automatically disabled if sqlite is not available.
    -- NOTE: THIS TAKES PRECEDENCE OVER OTHER SORT OPTIONS!
    frecency = {
      -- the directory to store the database in
      db_root = string.format('%s/legendary/', vim.fn.stdpath('data')),
      -- the maximum number of timestamps for a single item
      -- to store in the database
      max_timestamps = 10,
    },
  },
  which_key = {
    -- Automatically add which-key tables to legendary
    -- see ./doc/WHICH_KEY.md for more details
    auto_register = true,
    -- you can put which-key.nvim tables here,
    -- or alternatively have them auto-register,
    -- see ./doc/WHICH_KEY.md
    mappings = {},
    opts = {},
    -- controls whether legendary.nvim actually binds they keymaps,
    -- or if you want to let which-key.nvim handle the bindings.
    -- if not passed, true by default
    do_binding = true,
  },
  scratchpad = {
    -- How to open the scratchpad buffer,
    -- 'current' for current window, 'float'
    -- for floating window
    view = 'float',
    -- How to show the results of evaluated Lua code.
    -- 'print' for `print(result)`, 'float' for a floating window.
    results_view = 'float',
    -- Border style for floating windows related to the scratchpad
    float_border = 'rounded',
    -- Whether to restore scratchpad contents from a cache file
    keep_contents = true,
  },
  -- Directory used for caches
  cache_path = string.format('%s/legendary/', vim.fn.stdpath('cache')),
  -- Log level, one of 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
  log_level = 'info',
})





EOF
