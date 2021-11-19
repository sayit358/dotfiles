" Format text: taken from u/HarmonicAscendant
augroup formatting 
  autocmd!
  autocmd FileType markdown setlocal formatprg=prettier\ --parser\ markdown
  autocmd FileType css setlocal formatprg=prettier\ --parser\ css
  autocmd FileType html setlocal formatprg=prettier\ --parser\ html
  autocmd FileType json setlocal formatprg=prettier\ --parser\ json
  autocmd FileType javascript setlocal formatprg=prettier\ --parser\ typescript
  autocmd FileType typescriptreact setlocal formatprg=prettier\ --parser\ typescript
  autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
augroup END

" format entire buffer and keep cursor position with mark
nnoremap <silent><leader>fpr mxgggqG'xk<CR>
