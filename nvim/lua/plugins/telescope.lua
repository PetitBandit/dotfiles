local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        sorting_strategy = "ascending",
        -- shorten_path = true,
        color_devicons = true,
        file_sorter = require('telescope.sorters').get_fzy_sorter,
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


  }

}

local M = {}

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "~/dotfiles/nvim/",
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
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/",
        file_ignore_patterns = {"index.ts", "index.stories.js"},
    })
end


require('telescope').load_extension('fzf')
return M
