    Plug 'norcalli/nvim-colorizer.lua'                      " colorize colors 

function ColorizerSetup()
lua << EOF
require("colorizer").setup {}
EOF
endfunction


augroup ColorizerSetup
    autocmd!
    autocmd User PlugLoaded call ColorizerSetup()
augroup END
