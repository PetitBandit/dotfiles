let g:vimwiki_markdown_link_ext = 1


nmap - <Plug>VimwikiMakeDiaryNote

if has('mac')
  let g:vimwiki_list = [{'path':'/Users/cid/Library/Mobile Documents/com~apple~CloudDocs/terminus', 'syntax':'markdown', 'ext':'.md'}]
elseif has('unix')
  let g:vimwiki_list = [{'path':'~/Sync/Documents/obsidian/Cid', 'syntax':'markdown', 'ext':'.md'}]
endif
