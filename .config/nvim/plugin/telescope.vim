" Find files with Telescope
nmap <Leader>ff :Telescope find_files<CR>
nnoremap <Leader>fg :Telescope live_grep<CR>
nnoremap <Leader>bf :Telescope buffers<CR>

lua << EOF
require("telescope").setup {
  pickers = {
    buffers = {
      show_all_buffers = true,
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
     previewer = false,
     hidden = true
   }
  }
 }
EOF
