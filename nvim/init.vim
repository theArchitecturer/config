"#      __                                   __
"#	   / /   ___  ____ ___  ____  ____  ____/ /___ ___  __
"#	  / /   / _ \/ __ `__ \/ __ \/ __ \/ __  / __ `/ / / /
"#	 / /___/  __/ / / / / / /_/ / / / / /_/ / /_/ / /_/ /
"#	/_____/\___/_/ /_/ /_/\____/_/ /_/\__,_/\__,_/\__, /
"#	                                             /____/


"#       _                       _             
"#__   _(_)_ __ ___        _ __ | |_   _  __ _ 
"#\ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"# \ V /| | | | | | |_____| |_) | | |_| | (_| |
"#  \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"#                        |_|            |___/ 

call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'camspiers/animate.vim'
Plug 'yggdroot/indentline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
" Plug 'sbdchd/neoformat'

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'majutsushi/tagbar'
"Syntax handing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()

let g:vim_home = get(g:, 'vim_home', expand('~/.config/nvim/configs/'))
let config_list = [
	\ '01.basic.vim',
	\ '02.filetype.vim',
	\ '11.system_copy.vim',
    \ '12.deoplete.vim',
    \ '04.plugin.vim',
     	\]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor
