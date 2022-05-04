fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup BRANCISCO
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
    autocmd FileType markdown setlocal spell
    autocmd Filetype markdown set wrap
augroup END
