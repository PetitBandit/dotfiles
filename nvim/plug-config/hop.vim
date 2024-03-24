lua << EOF
require'hop'.setup()
EOF

map <silent>s :HopWord<CR>
map <silent>S :HopChar2<CR>

hi HopNextKey guifg=#3cdd78
hi HopNextKey1 guifg=#ecc94b
hi HopNextKey2 guifg=#dd6b20
