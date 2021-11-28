local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        sorting_strategy = "ascending",
        -- shorten_path = true,
        color_devicons = true,
        layout_config = {
            prompt_position = "top",
            width = 0.9,

            horizontal = {
                width_padding = 0.04,
                height_padding = 0.1,
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
            }
        },

    extensions = {
fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }

  }

}

require('telescope').load_extension('fzf')
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

M.search_actions= function()
    require("telescope.builtin").lsp_code_actions(cursor, {
        prompt_title = "< Actions >",
        layout_config = {
            prompt_position = 'bottom',
            height = 0.2,
        }
    })
end

M.search_profiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< PRO >",
        path_display = { "smart" },
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/",
        file_ignore_patterns = {"index.ts", "index.stories.js"},
    })
end

M.search_gitfiles = function()
    require("telescope.builtin").git_files({
        prompt_title = "< GIT >",
        file_ignore_patterns = {"index.ts", "index.stories.js"},
    })
end



require('telescope').load_extension('fzf')
return M
