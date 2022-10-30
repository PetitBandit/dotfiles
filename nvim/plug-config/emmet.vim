let g:user_emmet_leader_key='<C-space>'
" let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,tsx,typescriptreact EmmetInstall


let g:user_emmet_settings={
\  'tsx' : {
\    'extends': 'typescriptreact',
\    'default_attributes': {
\      'label': [{'htmlFor': ''}],
\      'class': {'className': ''},
\    }
\  },
\}


let g:user_emmet_mode = 'inv'
  vmap ,  <plug>(emmet-expand-abbr)
  " vmap u   <plug>(emmet-update-tag)
  vmap e <plug>(emmet-balance-tag-inward)
  vmap r  <plug>(emmet-balance-tag-outword)
  " imap   <C-y>n   <plug>(emmet-move-next)
  " imap   <C-y>N   <plug>(emmet-move-prev)
  " <div class="tomate">
"   <ul>
"     <li>01</li>
"     <li>02</li>
"     <li>03</li>
"   </ul>
  "   </ul>
  "   <ul>
  "     <li>01</li>
  "     <li>02</li>
  "     <li>03</li>
  "   </ul>
  " </div>
