require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        prompt_position = "top",
        sorting_strategy = "ascending",
        color_devicons = true,
        mappings = {
            i = {
                }
            }
        },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                            -- the default case_mode is "smart_case"
        }
  }
}

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
        file_ignore_patterns = {"index.ts"}
    })
end


require('telescope').load_extension('fzf')
return M
