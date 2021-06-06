" :SLoad       load a session
"# :SSave[!]    save a session
"# :SDelete[!]  delete a session
"# :SClose      close a session

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]


let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { ',': '~/.config/nvim/plug-config/start-screen.vim' },
            \ { 'm': '~/.config/nvim/keys/mappings.vim' },
            \ { 'w': '~/.config/nvim/keys/which-key.vim' },
            \ { 'p': '~/.config/nvim/plugins.vim' },
            \ { 'K': '~/.config/kitty/kitty.conf'},
            \ { 'z': '~/.config/zsh/zshrc'},
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
