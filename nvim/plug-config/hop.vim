lua << EOF
require'hop'.setup()
EOF

map <silent>S :HopWord<CR>
map <silent>s :HopChar2<CR>

hi HopNextKey guifg=#ecc94b
hi HopNextKey1 guifg=#ecc94b
hi HopNextKey2 guifg=#dd6b20

