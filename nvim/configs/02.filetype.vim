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
autocmd FileType java set makeprg=javac\ %
autocmd FileType java setlocal omnifunc=javacomplete#Complete
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
au BufEnter *.cpp set makeprg=g++\ -g\ %\ -o\ %< 

""""""""""""""""""""""""""""""
" => C++, C section
""""""""""""""""""""""""""""""
" function! s:insert_gates()
"   let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
"   execute "normal! i#ifndef " . gatename
" endfunction
" autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

" function! s:build_command()

" function! g:Build_active_file()
"     exec "w"
"     silent make
" endfunction



