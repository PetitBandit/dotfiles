Plug 'phaazon/hop.nvim'

function HopSetup()
lua << EOF
require("hop").setup {}
EOF
endfunction

augroup HopSetup
    autocmd!
    autocmd User PlugLoaded call HopSetup()
augroup END

" map <silent>S :HopLine<CR>
map <silent>s :HopWord<CR>
map <silent>S :HopChar2<CR>
