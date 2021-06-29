require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        prompt_position = "top",
        sorting_strategy = "ascending",
        mappings = {
            i = {
                }
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

require('telescope').load_extension('fzf')
return M
