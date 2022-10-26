let mapleader = " "

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
call plug#end()

" Settings
syntax on
set encoding=utf-8
set number relativenumber
set hidden
set hlsearch incsearch
set noswapfile nobackup
set scrolloff=8
set colorcolumn=80
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab autoindent
set wildmode=longest,list,full
set splitbelow splitright

" Security options
set nomodeline

"smart wrapping
set wrap
set textwidth=79

" Better window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove highlight
nnoremap <leader>no :noh<CR>

" Colorscheme
set background=dark
colorscheme gruvbox

"needed for italics, only works in some terminals
let g:gruvbox_italic=1

" goyo.vim (고요)
map <leader>f :Goyo \| set linebreak<CR>

" Detect trailing whitespace and other whitespace
set listchars=tab:>~,nbsp:_,trail:.
set list
