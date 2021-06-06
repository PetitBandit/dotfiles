
function! Indentfile()
  " indent the hole file and get bakc to original position using z mark
  normal! mzgg=G'z 
  " removes double empty lines
  normal! :%s/\(\n\n\)\n\+/\1/<cr>
endfunction
