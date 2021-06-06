lua require("plugins")


" Using lua functions

nnoremap <leader>sf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>sg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>sh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>sr <cmd>lua require('plugins.telescope').search_dotfiles()<cr>
nnoremap <leader>sp <cmd>lua require('plugins.telescope').search_workfiles()<cr>
