
call plug#begin()
 Plug 'crusoexia/vim-monokai'
 Plug 'pangloss/vim-javascript'
 Plug 'crusoexia/vim-javascript-lib'
 Plug 'posva/vim-vue'
 Plug 'hashivim/vim-terraform'
 Plug 'PProvost/vim-ps1'
 Plug 'mxw/vim-jsx'
 Plug 'leafgarland/typescript-vim'
 Plug 'fatih/vim-go'
 Plug 'ekalinin/Dockerfile.vim'
 Plug 'Quramy/tsuquyomi'
 Plug 'qpkorr/vim-bufkill'
 Plug 'jparise/vim-graphql'
 Plug 'godlygeek/tabular'
call plug#end()

syntax on
colorscheme monokai
set t_Co=256

nmap <F2> :bp <enter>
nmap <F3> :bn <enter>

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set noswapfile
