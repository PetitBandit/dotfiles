
lua <<EOF

 require("ibl").setup {
    -- for example, context is off by default, use this to turn it on
    exclude = {
        filetypes = { "help", "startify",  "Trouble", "lazy", "neo-tree" },
        buftypes = { "terminal" },
      },
}



EOF

let g:indent_blankline_filetype_exclude = ["startify", "help", "vimwiki", "NvimTree", "TelescopePrompt"]
let g:indent_blankline_buftype_exclude = ["terminal", "nofile", "quickfix", "prompt",] 
