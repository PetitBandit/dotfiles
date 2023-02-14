let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_listsyms = '✗○◐●✓'



if has('mac')
  let g:vimwiki_list = [{'path':'~/Library/Mobile Documents/Icloud~md~obsidian/Documents/terminus/', 'syntax':'markdown', 'ext':'.md'}]
elseif has('unix')
  let g:vimwiki_list = [{'path':'~/Sync/Documents/obsidian/terminus', 'syntax':'markdown', 'ext':'.md'}]
endif
