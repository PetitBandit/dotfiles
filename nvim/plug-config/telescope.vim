lua require("plugins")
lua require("plugins.telescope")

" Using lua functions

nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>sd <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>rc <cmd>lua require('plugins.telescope').search_dotfiles()<CR>
nnoremap <leader>sp <cmd>lua require('plugins.telescope').search_profiles()<cr>

"Ctrl + /
" nnoremap <C-_> :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <cr> 
nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending", prompt_position="top"})<cr>




"1:32 devicons telescope 
"1:42 customize specific picker



