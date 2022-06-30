call plug#begin('~/.vim/plugged')
Plug 'machakann/vim-sandwich'
if !exists('g:vscode')
 Plug 'tpope/vim-commentary'
endif
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()



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

if exists('g:vscode')
 xmap gc  <Plug>VSCodeCommentary
 nmap gc  <Plug>VSCodeCommentary
 omap gc  <Plug>VSCodeCommentary
 nmap gcc <Plug>VSCodeCommentaryLine
endif
