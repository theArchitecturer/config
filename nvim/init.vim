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
Plug 'kien/rainbow_parentheses.vim'
" Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Syntax handing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }

call plug#end()

    " \ '13.coc_neovim.vim',
let g:vim_home = get(g:, 'vim_home', expand('~/.config/nvim/configs/'))
let config_list = [
    \ '01.basic.vim',
    \ '02.filetype.vim',
    \ '03.build_task.vim',
    \ '11.system_copy.vim',
    \ '14.plugin.vim',
    \ '12.deoplete.vim',
        \]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor
