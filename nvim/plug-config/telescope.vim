lua require("plugins")


" Using lua functions

nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>sh <cmd>lua require('telescope.builtin').help_tags()<cr>



lua << EOF
require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        mappings = {
            i = {
                }
            }
        }
}
require('telescope').load_extension('fzf')
EOF


