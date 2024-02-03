return {
"nvim-tree/nvim-tree.lua",
dependencies = {
  "nvim-tree/nvim-web-devicons",
},

config = function()
  local nvimtree = require("nvim-tree")

  -- recommended settings from nvim-tree documentation
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- change color for arrows in tree to light blue
  vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

  -- configure nvim-tree
  nvimtree.setup({
    view = {
      width = 60,
    },
    filters = {
      custom = { ".DS_Store" },
    },
    git = {
      ignore = false,
    },
})

-- set keymaps
local keymaps = vim.keymap

keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>") -- toggle file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>") -- toggle file explorer
end
}
