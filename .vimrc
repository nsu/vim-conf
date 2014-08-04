set nocompatible

" Tab navigation with tr and ty
nnoremap tr   :tabprevious<CR>
nnoremap ty   :tabnext<CR>
nnoremap tt   :tabnew<CR>


" Fish-fix
set shell=/bin/bash

" Spaces for tabs and greedy backspacing
set expandtab
set softtabstop=4
set shiftwidth=4

" Syntax highlighting
syntax on

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
colorscheme Tomorrow

" highlight all matches for search
set hlsearch

" newline at 80 characters & highlight 80th char
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.md 2mat ErrorMsg '\%81v.' 

