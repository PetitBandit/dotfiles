lua require("plugins")
lua require("plugins.telescope")

" Using lua functions

" nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_branches()<cr>
" nnoremap <leader>se <cmd>lua require('telescope.builtin').file_browser()<cr>
" nnoremap <leader>M <cmd>lua require('telescope.builtin').marks()<cr>
" nnoremap <leader>sh <cmd>lua require('telescope.builtin').oldfiles()<cr>
" nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <bs> <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>sr <cmd>lua require('plugins.telescope').search_dotfiles()<CR>
" nnoremap <leader>sp <cmd>lua require('plugins.telescope').search_profiles()<cr>
" nnoremap <leader>sd <cmd>lua require('plugins.telescope').search_docfile()<cr>
" nnoremap <leader>t <cmd>lua require('plugins.telescope').search_gitfiles()<cr>
"Ctrl + /
nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>



"0:00:40s install neovim
"1:32:39 devicons telescope 
"1:42:XX customize specific picker



