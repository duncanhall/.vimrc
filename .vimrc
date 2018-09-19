
" PLUGINS - see vim-plug
call plug#begin()

 let g:plug_timeout = 1000
 function! BuildYCM(info)
   " info is a dictionary with 3 fields
   " - name:   name of the plugin
   " - status: 'installed', 'updated', or 'unchanged'
   " - force:  set on PlugInstall! or PlugUpdate!
   if a:info.status == 'installed' || a:info.force
     !./install.py --js-completer --go-completer
   endif
 endfunction

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
 Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
call plug#end()

" Enable Monokai colors
syntax on
colorscheme monokai
set t_Co=256

" Prev / Next tab with F2 / F3 keys
nmap <F2> :bp <enter>
nmap <F3> :bn <enter>

" Line Numbers
set number
set clipboard=unnamed
set expandtab
set cursorline
set showmatch

" Use enter ,d in normal mode to delete a buffer without closing split pane
nmap ,d :b#<bar>bd#<CR>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/node_modules/*

" 2 space tabs
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

" Switch buffers without saving
set hidden

" No swap files
set noswapfile

" Show current file path in status
set laststatus=2
set statusline=
set statusline+=%f                            " filename
set statusline+=\ %l\:%c                      " line:char
set statusline+=\ b%-10.3n                    " buffer number
set statusline+=\[%{strlen(&ft)?&ft:'none'}]  " file type  
set statusline+=%h%m%r%w                      " status flags

" Handle colors via tmux
set t_ut=

syntax enable  
filetype plugin on  

" Golang 
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
