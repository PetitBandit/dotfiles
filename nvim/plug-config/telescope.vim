lua require("plugins.telescope")

" Using lua functions

nnoremap gr          <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap gq          <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
" nnoremap <leader>e   <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap \       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>





