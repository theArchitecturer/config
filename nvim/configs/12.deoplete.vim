"     _                  _      _
"  __| | ___  ___  _ __ | | ___| |_ ___
" / _` |/ _ \/ _ \| '_ \| |/ _ | __/ _ \
"| (_| |  __| (_) | |_) | |  __| ||  __/
" \__,_|\___|\___/| .__/|_|\___|\__\___|
"                 |_|
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
call deoplete#custom#option('max_list', 10)
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" let g:LanguageClient_serverCommands = {
"             \ 'rust': ['/usr/bin/rustup', 'run', 'stable', 'rls'],
"             \ 'python': ['~/.local/bin/pyls'],
"             \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"             \ 'typescript': ['/usr/lib/node_modules/typescript/bin/tsserver'],
"             \ 'c': ['ccls', '--log-file=/tmp/cc.log'],
"             \ 'cpp': ['ccls', '--log-file=/tmp/cc.log'],
"             \ 'objc': ['ccls', '--log-file=/tmp/cc.log'],
"             \ }

" let g:LanguageClient_loadSettings = 1 
" let g:LanguageClient_settingsPath = '/home/thearchitecturer/.config/nvim/settings.json'

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"  _        _           _
" | |_ __ _| |__  _ __ (_)_ __   ___
" | __/ _` | '_ \| '_ \| | '_ \ / _ \
" | || (_| | |_) | | | | | | | |  __/
" \__\__,_|_.__/|_| |_|_|_| |_|\___|
" call deoplete#custom#var('tabnine', {
" \ 'line_limit': 400,
" \ 'max_num_results': 7,
" \ })
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*'  })
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
