" _           _ _     _ _            _    
"| |__  _   _(_) | __| | |_ __ _ ___| | __
"| '_ \| | | | | |/ _` | __/ _` / __| |/ /
"| |_) | |_| | | | (_| | || (_| \__ \   < 
"|_.__/ \__,_|_|_|\__,_|\__\__,_|___/_|\_\

" map <silent> <C-b> :AsyncTask file-build <CR>
" map <silent> <F5> :AsyncTask file-run <CR>
" command! -bang -nargs=? -complete=dir Task
"     \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}'], 'up': '10', 'left': '10'}, <bang>0)

" map <silent> <C-b> :Task<CR>
" let source += [name .' hello']
" let source = 'hello holle'
" map <silent> <C-b> 
"             \:call fzf#run({'source': source})<CR>
" map <C-b> :call fzf#run({'source': map(split(globpath(&rtp, 'colors/*.vim')),
"             \               'fnamemodify(v:val, ":t:r")'),
"             \ 'sink': 'colo', 'left': '25%'})
" nnoremap <silent> <C-b> :call fzf#run({'source': GetOutput("01.basic.vim"),'sink': function('HandleCommand'),'options': '-m'} )<CR>

" function! HandleCommand(item)
"     execute(":s/^/". a:item ."\<CR>") 
" endfunction

" autocmd BufEnter :call UpdateRemotePlugins()
"
map <C-b> :Echom <CR>
" augroup myterm | au!
"     au TermOpen * if &buftype ==# 'terminal' | resize 20 | vert resize 50 | endif
" augroup end
" set termwinsize=20x10
