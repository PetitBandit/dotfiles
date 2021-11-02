    Plug 'code-biscuits/nvim-biscuits',

function BiscuitsSetup()
lua << EOF
require("biscuits").setup {}
EOF
endfunction


augroup BiscuitsSetup
    autocmd!
    autocmd User PlugLoaded call BiscuitsSetup()
augroup END
