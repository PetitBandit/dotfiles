let g:hardtime_default_on = 1
let g:list_of_insert_keys = []
let g:hardtime_ignore_quickfix = 1

  " To make hardtime allow a key if it is different from the previous key, set
  " This, for example, makes it possible to input "jh", but not "jj".
  let g:hardtime_allow_different_key = 1
  let g:hardtime_ignore_buffer_patterns = [ "[coc-explorer]-1*"]
  let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"] 
