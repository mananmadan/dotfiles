call plug#begin()
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
Plug 'vim-syntastic/syntastic'
Plug 'micha/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'iamcco/markdown-preview.nvim' , { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()


"""coloring
syntax on
set background=dark
set termguicolors
colorscheme badwolf
let g:badwolf_darkgutter = 0
highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
let g:lightline = {'colorscheme': 'dark'}
highlight SpellBad cterm=underline
" patches
highlight CursorLineNr cterm=NONE
set number
set cindent
set visualbell
"


"""markdown
let g:mkdp_auto_start = 1
let g:mkdp_open_to_the_world = 1
let g:mkdp_auto_close = 1
"let g:mkdp_browser = 'chrome'
"let g:mkdp_port = 8080
"let g:mkdp_open_ip = '127.0.0.1'


"""mapping
let mapleader=","


""syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}
nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>r :SyntasticReset<CR>
nnoremap <Leader>i :SyntasticInfo<CR>
nnoremap <Leader>m :SyntasticToggleMode<CR>



""splits
set splitbelow
set splitright


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

function! Load()
    r ~/snippets/cc
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

"load from start
nmap <leader>c :call CC()<CR> 
""build the file
nmap <leader>b :call Compile()<CR>
""show testcases
nmap <leader>st :call Show()<CR>
""load snippet
nmap <leader>l : call Load()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
