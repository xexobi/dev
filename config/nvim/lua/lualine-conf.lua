require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {''},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {''},
    lualine_z = {'branch','diff'}
  }
}

