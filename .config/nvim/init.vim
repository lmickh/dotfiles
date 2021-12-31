" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=2

" Plugins
call plug#begin()

" Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " Comment code with gcc & gc
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install' }" Auto completion
" Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/ryanoasis/vim-devicons' " Icons

set encoding=UTF-8

call plug#end()

