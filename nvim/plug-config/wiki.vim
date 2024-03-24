let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_listsyms = ' ○◐●✓'
let g:vimwiki_list = [{'path':'~/terminus/', 'syntax':'markdown', 'ext':'.md'}]


function! s:Fix_auto_diary_index()
  VimwikiDiaryGenerateLinks
  write
endfunction

augroup vimwiki_fix_auto_diary_index
  autocmd!
  autocmd BufEnter diary.md call <SID>Fix_auto_diary_index()
augroup END
