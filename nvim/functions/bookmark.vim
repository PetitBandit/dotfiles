
function! Bookmark()
  redir >> ~/Nextcloud/Documents/obsidian/Cid/Index.md
  echo "* [ ]  [".expand("%t")."](" expand("%:p").':'.line('.').")"
  echo " "
  redir END
endfunction
:command! Bookmark :call Bookmark()
