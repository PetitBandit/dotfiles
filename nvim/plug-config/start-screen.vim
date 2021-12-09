 " :SLoad       load a session
" # :SSave[!]    save a session
" # :SDelete[!]  delete a session
" # :SClose      close a session

      nnoremap <Leader><Leader> :Startify <CR>

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
          \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


let g:startify_bookmarks = [
            \ { 'i': '~/dotfiles/nvim/init.vim' },
            \ { 'I': '~/dotfiles/i3/config' },
            \ { ',': '~/dotfiles/nvim/plug-config/start-screen.vim' },
            \ { 'm': '~/dotfiles/nvim/keys/mappings.vim' },
            \ { 'w': '~/dotfiles/nvim/lua/plugins/whichkey.lua' },
            \ { 'p': '~/dotfiles/nvim/plugins.vim' },
            \ { 'K': '~/dotfiles/kitty/kitty.conf'},
            \ { 'z': '~/dotfiles/zsh/zshrc'},
            \ { 'c': '~/dotfiles/nvim/snips/scss.snippets' },
            \ { 'J': '~/dotfiles/nvim/snips/jss.snippets' },
            \ ]



" let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1

let g:startify_custom_header = [ 
      \'                                                      ',  
      \'    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
      \'    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
      \'    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
      \'    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      \'    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      \'    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
      \]
        " \ '   _  __     _         __  ___         __     ___ ',
        " \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        " \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
        " \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        " \]

    let g:startify_session_dir = '~/dotfiles/nvim/sessions'
