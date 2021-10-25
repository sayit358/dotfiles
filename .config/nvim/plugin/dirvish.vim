" Dirvish
let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore vsplit | silent Dirvish <args>

nmap <silent> <Leader>e :Explore<CR>
let g:dirvish_mode = ':sort | sort ,^.*[^/]$, r'

nnoremap <silent> <Leader>v :Vexplore<CR>
nnoremap <silent> <Leader>s :Sexplore<CR>

nnoremap <silent> <Leader>df :Explore ~/.config/nvim/<CR>
