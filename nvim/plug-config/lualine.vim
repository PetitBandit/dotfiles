lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
     component_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = { 'filetype'},
    -- lualine_x = {'%=', '%t%m', '%3p'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
