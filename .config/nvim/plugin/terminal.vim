" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


" Toggle terminal on/off (neovim)
nnoremap <silent> <Leader>t :call TermToggle(12)<CR>
tnoremap <silent> <Leader>t <C-\><C-n>:call TermToggle(12)<CR><C-w>=

autocmd TermOpen * setlocal nonumber norelativenumber
