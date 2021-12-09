lua require("plugins.telescope")

" Using lua functions

" nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_branches()<cr>
" nnoremap <leader>se <cmd>lua require('telescope.builtin').file_browser()<cr>
" nnoremap <leader>M <cmd>lua require('telescope.builtin').marks()<cr>
" nnoremap <leader>sh <cmd>lua require('telescope.builtin').oldfiles()<cr>
" nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <bs>        <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap gr          <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap gq          <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap <leader>e   <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>yop <cmd>lua require('plugins.telescope').search_color()<cr>
nnoremap <leader>ca          <cmd>lua require('plugins.telescope').search_actions()<cr>
" nnoremap <C-_>       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap \       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
" nnoremap <leader>sr <cmd>lua require('plugins.telescope').search_dotfiles()<CR>
" nnoremap <leader>sp <cmd>lua require('plugins.telescope').search_profiles()<cr>
" nnoremap <leader>sd <cmd>lua require('plugins.telescope').search_docfile()<cr>
" nnoremap <leader>t <cmd>lua require('plugins.telescope').search_gitfiles()<cr>
"Ctrl + /





nnoremap <leader>sT <cmd>lua require('plugins.telescope').search_poeditor()<cr>
