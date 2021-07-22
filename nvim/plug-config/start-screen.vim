" :SLoad       load a session
"# :SSave[!]    save a session
"# :SDelete[!]  delete a session
"# :SClose      close a session

      nnoremap <Leader><Leader> :Startify <CR>

let g:startify_session_dir = '~/dotfiles/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
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
            \ { 'b': '~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Write/life.txt' },
            \ ]



let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1

let g:startify_custom_header = [
        \ '   _  __     _         __  ___         __     ___ ',
        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        \]
