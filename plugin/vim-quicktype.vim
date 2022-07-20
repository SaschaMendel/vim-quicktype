let s:typed_langs = ["java", "go", "m", "ts", "typescript", "swift", "elm", "rb", "ruby", "dart", "py", "hs", "haskell"]

function! s:QuickType(...) range
    let cmd = [
        \ '!quicktype --quiet',
        \]
    let cmd = add(cmd, '-l ' . &filetype)

    if a:0 > 0
    	let cmd = add(cmd, '-s ' . a:1)
    endif

    echo &filetype
    if index(s:typed_langs, &filetype) >= 0
    let cmd = add(cmd, '--just-types')
    endif
    execute a:firstline . ',' . a:lastline . join(cmd)
endfunction

augroup quicktype
    autocmd!
    autocmd FileType *
        \ command! -bar -nargs=? -buffer -range=% QuickType <line1>,<line2>call s:QuickType(<f-args>)
augroup end

