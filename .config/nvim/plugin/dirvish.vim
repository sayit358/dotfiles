" Dirvish
let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Explore Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>

nmap <silent> <Leader>e :Dirvish<CR>
let g:dirvish_mode = ':sort | sort ,^.*[^/]$, r'

nnoremap <silent> <Leader>v :vsplit +Dirvish<CR>
nnoremap <silent> <Leader>s :split +Dirvish<CR>

nnoremap <silent> <Leader>df :Dirvish ~/.config/nvim/<CR>
