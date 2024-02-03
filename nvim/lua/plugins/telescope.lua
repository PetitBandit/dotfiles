local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        sorting_strategy = "ascending",
        -- shorten_path = true,
        color_devicons = true,
        layout_config = {
          prompt_position = "top",
            -- width = 0.9,
             width = 0.99,
             height = 0.99,

            horizontal = {
                width_padding = 0.04,
                height_padding = 0.2,
                preview_width = 0.5
            },
            vertical = {
                width_padding = 0.1,
                height_padding = 0.04,
                preview_height = 0.5
            },

        },
    mappings = {
        i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            ["<CR>"] = actions.select_default + actions.center,
        },
        n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        },
        },
    pickers = {
      current_buffer_fuzzy_find = {
        -- sorting_strategy = "ascending" ,
        sorting_strategy = "descending" ,
        tiebreak = 'index',

      }
            -- Default configuration for builtin pickers goes here:
            -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this
            -- builtin picker
          },
    },

    extensions = {
      fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                            -- the default case_mode is "smart_case"
          },
      ["ui-select"] = {
            require("telescope.themes").get_cursor {
              -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
      }

    }

}

require('telescope').load_extension('fzf')
require("telescope").load_extension("ui-select")
local themes = require "telescope.themes"
local cursor = themes.get_cursor()

local M = {}

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "~/dotfiles/nvim/",
    })
end

M.search_color = function()
    require("telescope.builtin").colorscheme({
        prompt_title = "< colors >",
        enable_preview = 1,
    })
end



M.search_docfile= function()
    require("telescope.builtin").help_tags({
        prompt_title = "< Documentation >",
        layout_config = {
            preview_width = 0.75,
        }
    })
end


M.search_profiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< PRO >",
        -- path_display = { shorten = 3 },
        wrap_results = true,
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/",
        file_ignore_patterns = {"index.ts", "index.stories.js"},
    })
end

M.search_proIcons = function()
    require("telescope.builtin").find_files({
        prompt_title = "< icons >",
        -- path_display = { shorten = 3 },
        wrap_results = true,
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/components/icons",
    })
end

M.search_gitfiles = function()
    require("telescope.builtin").git_files({
        prompt_title = "< GIT >",
        path_display = { shorten = 3 },
        file_ignore_patterns = {"index.ts", "index.stories.js"},
    })
end

M.search_poeditor = function()
    require("telescope.builtin").live_grep({
        prompt_title = "< POEDITOR >",
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/public/locales/fr/",
    })
end

M.search_terminus = function()
    require("telescope.builtin").live_grep({
        prompt_title = "< Terminus >",
        cwd = "~/terminus/",
    })
end









require('telescope').load_extension('fzf')
return M
