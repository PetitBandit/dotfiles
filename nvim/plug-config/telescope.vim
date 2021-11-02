    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-lua/plenary.nvim' "Telescope
    Plug 'nvim-lua/popup.nvim'

function TelescopeSetup()
lua << EOF
  local actions = require('telescope.actions')
  require('telescope').setup{
      defaults = {
          prompt_prefix = ">",
          sorting_strategy = "ascending",
          -- shorten_path = true,
          color_devicons = true,
          file_sorter = require('telescope.sorters').get_fzy_sorter,
          layout_config = {
              prompt_position = "top",
              width = 0.9,
              horizontal = {
                  width_padding = 0.04,
                  height_padding = 0.1,
                  preview_width = 0.5
              },
              vertical = {
                  width_padding = 0.1,
                  height_padding = 0.04,
                  preview_height = 0.5
              },
          },
          mappings = {
              i = {
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-k>"] = actions.move_selection_previous,
                  ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                  ["<CR>"] = actions.select_default + actions.center,
              },
              n = {
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-k>"] = actions.move_selection_previous,
                  ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
              },
              }
          },
      extensions = {
    }
  }
  local M = {}
  M.search_dotfiles = function()
      require("telescope.builtin").find_files({
          prompt_title = "< VimRC >",
          cwd = "~/dotfiles/nvim/",
      })
  end
  M.search_color = function()
      require("telescope.builtin").colorscheme({
          prompt_title = "< colors >",
          enable_preview = 1,
      })
  end
  M.search_docfile= function()
      require("telescope.builtin").help_tags({
          prompt_title = "< Documentation >",
          layout_config = {
              preview_width = 0.75,
          }
      })
  end
  M.search_profiles = function()
      require("telescope.builtin").find_files({
          prompt_title = "< PRO >",
          cwd = "~/work/doca/maiia-frontend/packages/pro-frontend/",
          file_ignore_patterns = {"index.ts", "index.stories.js"},
      })
  end

  M.search_gitfiles = function()
      require("telescope.builtin").git_files({
          prompt_title = "< GIT >",
          file_ignore_patterns = {"index.ts", "index.stories.js"},
      })
  end
  require('telescope').load_extension('fzf')
  return M
EOF
endfuction

augroup TelescopeSetup
  autocmd!
  autocmd User PlugLoaded call TelescopeSetup()
augroup END

" nnoremap <leader>sg <cmd>lua require('telescope.builtin').git_branches()<cr>
" nnoremap <leader>se <cmd>lua require('telescope.builtin').file_browser()<cr>
" nnoremap <leader>M <cmd>lua require('telescope.builtin').marks()<cr>
" nnoremap <leader>sh <cmd>lua require('telescope.builtin').oldfiles()<cr>
" nnoremap <leader>st <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <bs> <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap gr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>yop <cmd>lua require('telescope.telescope').search_color()<cr>
" nnoremap <leader>sr <cmd>lua require('plugins.telescope').search_dotfiles()<CR>
" nnoremap <leader>sp <cmd>lua require('plugins.telescope').search_profiles()<cr>
" nnoremap <leader>sd <cmd>lua require('plugins.telescope').search_docfile()<cr>
" nnoremap <leader>t <cmd>lua require('plugins.telescope').search_gitfiles()<cr>
"Ctrl + /
nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>

