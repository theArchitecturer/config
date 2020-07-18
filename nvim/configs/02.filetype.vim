""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Rust section
""""""""""""""""""""""""""""""
let g:rust_fold = 2
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'

""""""""""""""""""""""""""""""
" => Java section
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Kotlin section
""""""""""""""""""""""""""""""
au BufRead *.kt set filetype=kotlin
autocmd FileType kotlin setlocal commentstring=//%s

""""""""""""""""""""""""""""""
" => C section
""""""""""""""""""""""""""""""
au BufRead *.{h,c} set filetype=c
autocmd FileType c setlocal commentstring=//%s
""""""""""""""""""""""""""""""
" => Typescipt section
""""""""""""""""""""""""""""""
" au BufRead *.ts set filetype=typescipt
" autocmd FileType typescipt setlocal commentstring=//%s


""""""""""""""""""""""""""""""
" => C++ section
""""""""""""""""""""""""""""""
au BufRead *.{hpp,cpp} set filetype=cpp
autocmd FileType cpp setlocal commentstring=//%s

""""""""""""""""""""""""""""""
" => C++, C section
""""""""""""""""""""""""""""""
" function! s:insert_gates()
"   let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
"   execute "normal! i#ifndef " . gatename
"   execute "normal! o#define " . gatename . " "
"   execute "normal! Go#endif "
"   normal! k
" endfunction
" autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
