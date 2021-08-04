" Find files with Telescope
nmap <Leader>ff :Telescope find_files<CR>
nnoremap <Leader>fg :Telescope live_grep<CR>
nmap <Leader>e :Telescope file_browser<CR>
nnoremap <Leader>bf :Telescope buffers<CR>

lua << EOF
require("telescope").setup {
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    },
   find_files = {
     theme = "dropdown",
     previewer = false
   }
  }
 }
require('telescope').load_extension('dap')
EOF
