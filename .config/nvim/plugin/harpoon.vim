nnoremap <silent> <leader>j :lua require("harpoon.ui").nav_file(1)<CR>zzzv
nnoremap <silent> <leader>k :lua require("harpoon.ui").nav_file(2)<CR>zzzv
nnoremap <silent> <leader>l :lua require("harpoon.ui").nav_file(3)<CR>zzzv
nnoremap <silent> <leader>; :lua require("harpoon.ui").nav_file(4)<CR>zzzv
nnoremap <silent> <leader>tj :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <silent> <leader>tk :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <silent> <leader>tl :lua require("harpoon.term").gotoTerminal(3)<CR>
nnoremap <silent> <leader>t; :lua require("harpoon.term").gotoTerminal(4)<CR>
nnoremap <silent> <C-p> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent> <leader>;j :lua require("harpoon.term").sendCommand(1, 1)<CR>:lua require("harpoon.term").gotoTerminal(1)<CR>a<CR><C-\><C-n>
nnoremap <silent> <leader>;k :lua require("harpoon.term").sendCommand(1, 2)<CR>:lua require("harpoon.term").gotoTerminal(1)<CR>a<CR><C-\><C-n>
nnoremap <silent> <leader>;l :lua require("harpoon.term").sendCommand(1, 3)<CR>:lua require("harpoon.term").gotoTerminal(1)<CR>a<CR><C-\><C-n>
nnoremap <silent> <leader>;; :lua require("harpoon.term").sendCommand(1, 4)<CR>:lua require("harpoon.term").gotoTerminal(1)<CR>a<CR><C-\><C-n>
nnoremap <silent> <Leader>p :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>
