" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ "\<C-V>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\   " The current mode
set statusline+=%1*\ %<%f%m%r%h%w\                        " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                      " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}      " Encoding
set statusline+=\ (%{&ff})                                " FileFormat (dos/unix..)
set statusline+=\ %{fugitive#statusline()}
set statusline+=%3*│                                      " Separator
set statusline+=%=                                        " Right Side
set statusline+=%2*\ %Y\                                  " FileType
set statusline+=%3*│                                      " Separator
set statusline+=%1*\ %02l:\%02v\                          " Line number / column number
set statusline+=%0*\ %n\                                  " Buffer number


hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

augroup vimrc-statusline
    autocmd!
    autocmd WinEnter * :setlocal statusline=
    " autocmd WinLeave * :setlocal statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
    autocmd WinLeave * :setlocal statusline=%f\ %h%w%m%r
  augroup END
