require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', {'diff', colored = true, diff_color = { added = { fg='#98c379' }, removed = { fg='#e06c75'} }},
    {'diagnostics', sources={'nvim_lsp', 'coc'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
    },
  inactive_sections = {
    lualine_c = {'filename'},
    lualine_x = {'location'},
    },
  extensions = {'fugitive', 'quickfix'}
  }
