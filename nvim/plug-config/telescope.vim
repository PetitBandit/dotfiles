lua require("plugins")


" Using lua functions

nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>sb <cmd>lua require('telescope.builtin').buffers()<cr>

"Ctrl + /
" nnoremap <C-_> :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <cr> 
nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending", prompt_position="top"})<cr>




"1:32 devicons telescope 
"1:42 customize specific picker

lua << EOF
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
require('telescope').load_extension('fzf')
EOF


