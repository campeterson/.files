execute pathogen#infect()
syntax on
filetype plugin indent on

" ctrl-p plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd= 'CtrlP'

" map leader key to ','
let mapleader = ","
let g:mapleader = ","

" Scroll 3 lines instead of 1 when cursor goes off screen
set scrolloff=3

" Current mode is displayed on bottom line
set showmode

" Make current line visible
set cursorline

" Show line, column, %, at bottom of window
set ruler

" Show line numbers
set number

" Set tabstop/shiftwidth for different files
autocmd Filetype html setlocal ts=2 sts=2 sw=2 et
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 et
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype python setlocal ts=8 sts=4 sw=4 et

" Default tabstop/shiftwidth
set tabstop=2
set shiftwidth=2
set expandtab

" tslime.vim
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

colorscheme vilight-cterm

" Show vim-airline status by default
set laststatus=2
