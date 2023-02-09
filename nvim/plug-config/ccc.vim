nnoremap <C-c> :CccPick<CR>

lua << EOF
-- Enable true color
vim.opt.termguicolors = true

local ccc = require("ccc")
local mapping = ccc.mapping
ccc.setup({
    -- Your favorite settings
    -- highlighter.auto_enable = true,
})
EOF
