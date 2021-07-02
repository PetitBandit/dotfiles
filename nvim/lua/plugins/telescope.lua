local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        prompt_position = "top",
        sorting_strategy = "ascending",
        color_devicons = true,
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                ["<esc>"] = actions.close,
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
         fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },

        -- fzf = {
        --     fuzzy = true,                    -- false will only do exact matching
        --     override_generic_sorter = false, -- override the generic sorter
        --     override_file_sorter = true,     -- override the file sorter
        --     case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        --                                     -- the default case_mode is "smart_case"
        -- }

  }
}
require('telescope').load_extension('fzy_native')

local M = {}

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "~/dotfiles/nvim/",
    })
end

M.search_profiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< PRO >",
        cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/",
        file_ignore_patterns = {"index.ts", "index.stories.js"}
    })
end


-- require('telescope').load_extension('fzf')
return M
