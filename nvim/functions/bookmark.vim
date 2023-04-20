
function! Bookmark()
  redir >> ~/Library/Mobile Documents/Icloud~md~obsidian/Documents/terminus/work/maiia/maiia_notes.md
  echo "- [✗] [".expand("%t")."](" expand("%:p").':'.line('.').")"
  echo " "
  redir END
endfunction
:command! Bookmark :call Bookmark()
