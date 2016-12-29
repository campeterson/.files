execute pathogen#infect()
syntax on
filetype plugin indent on

" ctrl-p plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd= 'CtrlP'
set wildignore+=*/tmp/*,*/target/*,*/compiled*

" map leader key to ','
let mapleader = ","
let g:mapleader = ","

" Make current line visible
set cursorline

" Large history
set history=1000

" Highlight search results
set hlsearch
" Leader a to remove highlighted search fields
nnoremap <leader>/ :nohlsearch<cr>

" Show matches as search is typed
set incsearch

" Setting for whitespace visualization
set list
set listchars=trail:·,tab:\ \

" Show line numbers
set number

" Show line, column, %, at bottom of window
set ruler

" Scroll 3 lines instead of 1 when cursor goes off screen
set scrolloff=3

" Current mode is displayed on bottom line
set showmode

" Set tabstop/shiftwidth for different files
autocmd Filetype html setlocal ts=2 sts=2 sw=2 et
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 et
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype python setlocal ts=8 sts=4 sw=4 et

" Support .boot and .hl files
autocmd BufNewFile,BufRead *.hl     set syntax=clojure
autocmd BufNewFile,BufRead *.boot   set syntax=clojure

" Default tabstop/shiftwidth
set tabstop=2
set shiftwidth=2
set expandtab

" tslime.vim
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

colorscheme vilight-cterm

" show vim-airline status by default
set laststatus=2
" more vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" tmuxline
let g:tmuxline_powerline_separators = 0

"Ack.vim - use The Silver Searcher
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev ag Ack!
cnoreabbrev Ag Ack!
