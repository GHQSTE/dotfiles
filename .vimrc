syntax on
set number relativenumber
set hidden
set hlsearch incsearch
set noswapfile nobackup
set scrolloff=8
set colorcolumn=80
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab autoindent
set fileformat=unix
set encoding=utf-8
set wildmode=longest,list,full
set splitbelow splitright

"smart wrapping
set wrap
set textwidth=79

" remaps - window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" leader key
let mapleader = " "

" remove highlight
nnoremap <leader>no :noh<CR>
