" You can't leave a blank line                                                                                                                                                                                                                                                                                                                                                                                                                                                              
"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
" Specially for gvim                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
set mouse=                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
set ruler                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
" Other vim settings                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
" Highlight the search matches                                                                                                                                                                                                                                                                                                                                                                                                                                                              
set hlsearch                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
syn on                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
"set tags=./tags,$BUILD_HOME/tags,$VMW_HOME/tags,/in/dr/pankaj/dev/software/tags                                                                                                                                                                                                                                                                                                                                                                                                            
set tags=tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,$VMW_HOME/tags                                                                                                                                                                                                                                                                                                                                                                                          
set path=.,$BUILD_HOME/include,$BUILD_HOME/runtime/*,$BUILD_HOME/*                                                                                                                                                                                                                                                                                                                                                                                                                          
set gfn=Monospace\ 10                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
set number                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
set magic                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
"fixdel                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
"set backspace=2                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
set t_kb= t_kD=                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
set autoindent                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
" set beautify                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
set incsearch                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
set showmatch                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
set showmode                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
set ignorecase                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
set smartcase                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
set showcmd                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
set scrolloff=4                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
set is                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
set scs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
" Set the 'tab length' to 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
set tabstop=2                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
set shiftwidth=2                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
set expandtab                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
set smarttab                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
set textwidth=85                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
:map <F1> :highlight normal guifg=black guibg=white                                                                                                                                                                                                                                                                                                                                                                                                                                         
:map <F2> :n<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
:map <F3> :browse confirm e<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                             
:map <F4> :1,$ s!                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
:map <F5> :1<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
:map <F6> :$<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
:map <F7> :if exists("syntax_on") <Bar> syntax off <Bar> else <Bar> syntax on <Bar> endif                                                                                                                                                                                                                                                                                                                                                                                                   
:map <F8> :n<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
:map <F9> :%s!  !    !g                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
:map <F10> :. !fmt -65<CR>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
:map <F11> O<Esc>Sx...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...                                                                                                                                                                                                                                                                                                                                                                                          
:map <F12> O<Esc>S....5....1....5....2....5....3....5....4....5....5....5....6....5....7                                                                                                                                                                                                                                                                                                                                                                                                    
:highlight normal guibg=black guifg=white                                                                                                                                                                                                                                                                                                                                                                                                                                                   
set cindent                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
" set cinoptions=>2,:0,=2,g0,h2,+2,(0,u0                                                                                                                                                                                                                                                                                                                                                                                                                                                    
" set formatoptions=tcroq                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
"set background=dark                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
"syntax on                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
set autoindent                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
"set number                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
set ic                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
" DO NOT go to the beginning of the file when 'search' reached at end                                                                                                                                                                                                                                                                                                                                                                                                                       
set nowrapscan                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
"set noslowopen
set noterse
" Enable the showing of you 'edit mode' at the right bottom corner.
set showmode
"######### 
" Insert
map  i
map <PageUp>   <C-B>
map    <C-B>
map <PageDown> <C-F>
map  <C-F>
map <Del> x
map  x
map <Backspace> X
map  X
"######### NUMERIC PAD START ###########
map <kHome> H
map <kEnd> L
map <kPageUp> 
map <kPageDown> 
"######### NUMERIC PAD END ###########
map F :!swt %<CR><CR>
"map g G
" map q :q<CR>
"map Q :q<CR>
map Q :bd<CR>
"map v 079lebF xi<CR><Esc>
"map v 1Go<CR>#cvsid = "@(#) $Id: .vimrc,v 1.12 2006/02/16 12:36:47 avasir Exp $";<CR><Esc>
"map v o<C-CR>0<C-D>ASV:<Space>
"map V o<Esc>80I-<Esc>khjllD

map e :Explore<CR>
" map [ ^
" map ] $
"
"
"######### Control keys
"
"
"map  :se noic
map <C-J> :set path=.,$STKDIR/DailyData/QUOTES/NSE/BhavFiles,$STKDIR/DailyData/QUOTES/NSE/QuoteHistories,$STKDIR/DailyData/QUOTES/BSE/QuoteHistories<CR>
map <C-A> :se ai!<CR>
map <C-C> :e %:r.cc<CR>
"map <C-E> I// ASV <Esc>j
map <C-H> :e %:r.h<CR>
map <C-N> :se nu!<CR>
"map <C-T> 0i// ASV <Esc>j
map <C-X> i<Esc>
"
" Edit the alternate file
map t :e#<CR>
set nocompatible              " be iMproved, required
filetype off                  " required
"let g:clang_library_path='/usr/lib64/clang-private'
"let g:clang_debug=1

set shada="NONE"
syntax on
set rtp+=~/teams/nonbackuped/runtime/BigDesignsTraces/manan/vundle/Vundle.vim
set rtp+=~/teams/nonbackuped/runtime/BigDesignsTraces/manan/vundle
set rtp+=~/.vim/bundle/Vundle.vim/

  "call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  call vundle#begin('/teams/nonbackuped/runtime/BigDesignsTraces/manan/vundle/')
  "
  " " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'morhetz/gruvbox'
  Plugin 'kien/ctrlp.vim'
  Plugin 'ms-jpq/coq_nvim'
  "Plugin 'catppuccin/nvim'
  Plugin 'ervandew/supertab'
  "Plugin 'ycm-core/YouCompleteMe'
  "Plugin 'neoclide/coc.nvim'
  "Plugin 'xavierd/clang_complete'
  "
  " " The following are examples of different formats supported.
  " " Keep Plugin commands between vundle#begin/end.
  " " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
  " " plugin from http://vim-scripts.org/vim/scripts.html
  " " Plugin 'L9'
  " " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
  " " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'hari-rangarajan/CCTree' 
  " " The sparkup vim script is in a subdirectory of this repo called vim.
  " " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  " " Install L9 and avoid a Naming conflict if you've already installed a
  " " different version somewhere else.
  " " Plugin 'ascenator/L9', {'name': 'newL9'}
  "
  " " All of your Plugins must be added before the following line
  call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamedplus
nmap <C-Right> gt
nmap <C-Left> gT
set background=dark
set bg=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set showtabline=2
 
" Highlighting for modified and non-modified tabs
highlight TabModified ctermbg=green guibg=green
highlight TabLineFill ctermbg=black  guibg=dark
"highlight Normal ctermbg=0 guibg=#1d2021
"cnoremap q <c-u>undo<CR>
"set nobackup
"let g:coc_data_home = '/teams/nonbackuped/runtime/BigDesignsTraces/manan/'
"nmap <C-[> <C-t>
                                                                                                                                                                      