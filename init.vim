call plug#begin()
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
call plug#end()

"""coloring
syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none


""" Standard configuration for nvim
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

" Competitive
function! CC()
    r ~/snippets/cc
    45vs
    e input.txt
    split
    e output.txt
endfunction

"show testcases
function! Show()
    45vs
    e input.txt
    split
    e output.txt
endfunction

"compiling for c++
function! Compile()
    !g++ -std=c++17 -Wshadow -Wall -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % && ./a.out
endfunction

"""mapping
let mapleader=","
nmap <leader>c :call CC()<CR>
nmap <leader>b :call Compile()<CR>
nmap <leader>st :call Show()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
