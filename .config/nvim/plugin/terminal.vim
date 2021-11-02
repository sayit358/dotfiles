let g:indent_blankline_buftype_exclude = ['terminal']

tnoremap <leader><Esc> <C-\><C-n>

autocmd TermClose * if !v:event.status | exe 'bdelete! '..expand('<abuf>') | endif

autocmd TermOpen * setlocal nonumber norelativenumber
