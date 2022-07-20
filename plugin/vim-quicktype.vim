function! s:QuickType(...) range
    let cmd = [
        \ '!quicktype --quiet --just-types',
        \]
    let cmd = add(cmd, '-l ' . &filetype)

    if a:0 > 0
    	let cmd = add(cmd, '-s ' . a:1)
    endif
    execute a:firstline . ',' . a:lastline . join(cmd)
endfunction

augroup quicktype
    autocmd!
    autocmd FileType *
        \ command! -bar -nargs=? -buffer -range=% QuickType <line1>,<line2>call s:QuickType(<f-args>)
augroup end

