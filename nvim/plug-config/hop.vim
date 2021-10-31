lua << EOF
require'hop'.setup()
EOF

" map <silent>S :HopLine<CR>
map <silent>S :HopWord<CR>
map <silent>s :HopChar2<CR>
