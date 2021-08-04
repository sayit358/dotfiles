require'lualine'.setup{
options = {theme = 'codedark'},

  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch", "diff"},
    lualine_c = {
      {"filename", file_status = true, full_path = true},
      {"diagnostics", sources = {"nvim_lsp"}}
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
extensions = {'fugitive'}
}
