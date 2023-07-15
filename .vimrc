set nocp
syntax enable
colorscheme slate
set number 
set relativenumber 

filetype plugin indent on
set shiftwidth=4
set tabstop=4
set expandtab
set backspace=indent,eol,start  " more powerful backspacing
set cursorline

inoremap {<CR> {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

map <C-c> :s/^/\/\//<Enter>
map <C-u> :s/^\/\///<Enter>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -g -o %:r -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wduplicated-cond -Wlogical-op<CR>
autocmd filetype cpp nnoremap <F10> :!%:r <CR>
autocmd filetype cpp nnoremap <F12> :!gdb %:r <CR>

packadd termdebug
let g:termdebug_popup=0
let g:termdebug_wide=163

set guioptions -=T
set guifont=Consolas:h23

set belloff=all
