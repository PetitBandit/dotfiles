
function! OpenAndSearch()
    :e $HOME/work/doca/maiia-frontend/packages/pro-frontend/src/theme/index.js 
    :BLines 
endfunction
:command! OpenAndSearch :call OpenAndSearch()

function! OpenAndSearchPoEditor()
    :e $HOME/work/doca/maiia-frontend/packages/pro-frontend/public/locales/fr/common.json
    :BLines 
endfunction
:command! OpenAndSearchPoEditor :call OpenAndSearchPoEditor()
