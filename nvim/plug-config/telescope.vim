lua require("plugins.telescope")

" Using lua functions

nnoremap gr          <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap gq          <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap <leader>e   <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap <leader>yop <cmd>lua require('plugins.telescope').search_color()<cr>
nnoremap <leader>ca          <cmd>lua require('plugins.telescope').search_actions()<cr>
" nnoremap <C-_>       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap \       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>





nnoremap <leader>fT <cmd>lua require('plugins.telescope').search_poeditor()<cr>
