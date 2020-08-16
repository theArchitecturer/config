"#      __                                   __
"#     / /   ___  ____ ___  ____  ____  ____/ /___ ___  __
"#    / /   / _ \/ __ `__ \/ __ \/ __ \/ __  / __ `/ / / /
"#   / /___/  __/ / / / / / /_/ / / / / /_/ / /_/ / /_/ /
"#  /_____/\___/_/ /_/ /_/\____/_/ /_/\__,_/\__,_/\__, /
"#                                               /____/

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
Plug 'christoomey/vim-tmux-navigator'
Plug 'camspiers/animate.vim'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'sheerun/vim-polyglot'
" Plug '~/Dev/Python/neovim_plugin/simple'
" Plug '~/Dev/Python/neovim_plugin/simple.nvim'
Plug 'theArchitecturer/simple'
" Plug '~/Dev/Python/neovim_plugin/Simple'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Syntax handing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asyncrun.vim'

call plug#end()

" \ '12.deoplete.vim',
    " \ '13.coc_neovim.vim',
let g:vim_home = get(g:, 'vim_home', expand('~/.config/nvim/configs/'))
let config_list = [
    \ '01.basic.vim',
    \ '02.filetype.vim',
    \ '03.build_task.vim',
    \ '11.system_copy.vim',
    \ '14.plugin.vim',
        \]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor
