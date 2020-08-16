"#	    __                                   __
"#	   / /   ___  ____ ___  ____  ____  ____/ /___ ___  __
"#	  / /   / _ \/ __ `__ \/ __ \/ __ \/ __  / __ `/ / / /
"#	 / /___/  __/ / / / / / /_/ / / / / /_/ / /_/ / /_/ /
"#	/_____/\___/_/ /_/ /_/\____/_/ /_/\__,_/\__,_/\__, /
"#	                                             /____/

set nocompatible
set autoindent
set smartindent
set tabstop=4
" set softtabstop
set expandtab
set shiftwidth=4 				"indent 4 spaces
set textwidth=120 				"wrap line at 120 chars.
set t_Co=256
set showmatch 					"highlight matching braces
set wrap 						"enable line wrapping
syntax on
syntax enable					"enable syntax highlight
set encoding=utf-8
set number
set showcmd 					"display incomplete commands
set lazyredraw 					"dont update screen during macro and script execution
set linebreak 					"avoid wrapping a line in the middle of a word
set scrolloff=3					"number of screen lines to keep above and below the cursor
set sidescrolloff=5 			"same but with column
set wildmenu					"Display command line tab completa option as a menu
set noswapfile
set cursorline					"highlight the cursor standing line
set title 						"window title reflect the curent editing file
set autoread					"auto re-read file if unmodified in vim
set history=1000				"undo limit
set relativenumber
set nobackup
set nowritebackup
set hidden
set cmdheight=2
set updatetime=300
set mouse=a
set signcolumn=yes
set termguicolors
" Insert mode setting
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
autocmd BufWinEnter,WinEnter term://* startinsert
""Whitespace
filetype plugin indent on		"load file type plugins + indentation
let mapleader=" "
" Return to last edit position when opening files 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set dictionary+=k/home/lemonday/.dictionary.txt
set complete+=k/home/lemonday/.dictionary.txt
set path+=**
autocmd VimEnter,VimLeave * silent !tmux set status

"#	          _                       _                         
"#	         | |                     | |                        
"#	 ___ ___ | | ___  _ __   ___  ___| |__   ___ _ __ ___   ___ 
"#	/ __/ _ \| |/ _ \| '__| / __|/ __| '_ \ / _ \ '_ ` _ \ / _ \
"#	 (_| (_) | | (_) | |    \__ \ (__| | | |  __/ | | | | |  __/
"#	\___\___/|_|\___/|_|    |___/\___|_| |_|\___|_| |_| |_|\___|
"colorscheme	

set background=dark
colorscheme dracula
" colorscheme gruvbox
" let g:gruvbox_termcolors=256
" colorscheme solarized
" let g:solarized_termcolos=256
let g:airline_theme='bubblegum'
" hi Normal guibg=NONE ctermbg=NONE

set statusline+=%#warningmsg#
set statusline+=%{coc#status()}
set statusline+=%{FugitiveStatusline()}

let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

"#  __       _     _ _             
"# / _| ___ | | __| (_)_ __   __ _ 
"#| |_ / _ \| |/ _` | | '_ \ / _` |
"#|  _| (_) | | (_| | | | | | (_| |
"#|_|  \___/|_|\__,_|_|_| |_|\__, |
"#                           |___/ 
"folding
set foldenable 				"enable folding
set foldmethod=manual
set nofoldenable

"#                  _                   _   _             
"# _ __   __ ___   _(_) __ _  __ _  __ _| |_(_) ___  _ __  
"#| '_ \ / _` \ \ / / |/ _` |/ _` |/ _` | __| |/ _ \| '_ \ 
"#| | | | (_| |\ V /| | (_| | (_| | (_| | |_| | (_) | | | |
"#|_| |_|\__,_| \_/ |_|\__,_|\__, |\__,_|\__|_|\___/|_| |_|
"#                           |___/                         
"navigation
" Opens a new tab with the current buffer's path
nnoremap <leader>te :tabedit <C-r>=expand("%:p:h")<CR>/
nnoremap <leader>tc :tabclose <CR>
" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
" Switch CWD to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>:pwd<cr>

" _                      _             _
"| |_ ___ _ __ _ __ ___ (_)_ __   __ _| |
"| __/ _ | '__| '_ ` _ \| | '_ \ / _` | |
"| ||  __| |  | | | | | | | | | | (_| | |
" \__\___|_|  |_| |_| |_|_|_| |_|\__,_|_|

nnoremap <leader>ot :split term://zsh <CR>
nnoremap <leader>oh :vsplit term://htop <CR>
nnoremap <leader>oc :vsplit term://cmus <CR>
tnoremap <Esc> <C-\><C-n>
let g:python3_host_prog="/usr/bin/python3"
let g:node_host_prog = '/usr/local/bin/neovim-node-host'
set runtimepath^=/home/thearchitecturer/Dev/Nodejs/neovim_plugin/simple
