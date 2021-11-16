let mapleader="\<Space>"

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Delete to clipboard
vnoremap  <leader>d  "+d
nnoremap  <leader>d  "+d

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

map ; :
noremap ;; ;

call plug#begin('~/.vim/plugged')
Plug 'machakann/vim-sandwich'
call plug#end()

