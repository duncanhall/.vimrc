                                                                                                                                                                                         
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
 Plug 'jparise/vim-graphql'                                                                                                                                                              
 Plug 'godlygeek/tabular'                                                                                                                                                                
 Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }                                                                                                                           
call plug#end()                                                                                                                                                                          
                                                                                                                                                                                         
" Enable Monokai colors                                                                                                                                                                  
syntax on                                                                                                                                                                                
colorscheme monokai                                                                                                                                                                      
set t_Co=256                                                                                                                                                                             
                                                                                                                                                                                         
" Prev / Next tab with F2 / F3 keys                                                                                                                                                      
nmap <F2> :bp <enter>                                                                                                                                                                    
nmap <F3> :bn <enter>                                                                                                                                                                    
                                                                                                                                                                                         
set number              " Line Numbers                                                                                                                                                   
~/.vimrc 1:0 b1         [vim]                                                                                                                                                            
:set nonumber                                                                                                                                                                            
[0] 0:vim*MZ 1:zsh-                                                                                                                                        "vim ~/.vimrc" 09:16 21-Apr-20
