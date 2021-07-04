function! ReplaceWordUnderCursor()
normal! yiw:%s/"//gc<left><left><left>
endfunction
