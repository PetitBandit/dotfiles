require('nvim-biscuits').setup({
  default_config = {
    -- cursor_line_only = true, 
    toggle_keybind = "<leader><tab>",
    max_length = 50,
    min_distance = 5,
    prefix_string = " 📎 "
  },
  language_config = {
    html = {
      prefix_string = " 🌐 "
    },
    javascript = {
      prefix_string = " ✨ ",
      max_length = 80
    },
    python = {
      disabled = true
    }
  }
})
