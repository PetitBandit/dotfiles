
lua <<EOF
 require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
EOF

let g:indent_blankline_filetype_exclude = ["startify", "help", "vimwiki", "NvimTree", "TelescopePrompt"]
let g:indent_blankline_buftype_exclude = ["terminal", "nofile", "quickfix", "prompt",] 
