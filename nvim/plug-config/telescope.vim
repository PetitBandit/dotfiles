lua require("plugins.telescope")

" Using lua functions

" nnoremap <leader>tp <cmd>lua require('telescope.builtin').live_grep()<cr><C-R>"
nnoremap gr          <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap gq          <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap \       <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>





