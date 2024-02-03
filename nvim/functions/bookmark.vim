
function! Bookmark()
  redir >> ~/terminus/index.md
  echo "- [✗] [".expand("%t")."](" expand("%:p").':'.line('.').")"
  echo " "
  redir END
endfunction
:command! Bookmark :call Bookmark()
