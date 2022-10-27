let mapleader = " "

" install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
call plug#end()

" colorscheme
set background=dark
colorscheme gruvbox

" needed for italics, only works in some terminals
let g:gruvbox_italic=1

" settings
set nocompatible
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
set splitbelow splitright
set cursorline

" enable autocompletion:
set wildmode=longest,list,full

" backspace doesn't work as expected in insert mode fix:
set backspace=indent,eol,start

" https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim
set clipboard=unnamedplus

" if you wanna yank and paste manually then uncomment the following two lines
" and comment out the 'clipboard' variable above.
""noremap <leader>y "+y
""noremap <leader>p "+p

" security options
set nomodeline

" smart wrapping
set wrap
set textwidth=79

" better window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" remove highlight
nnoremap <leader>no :noh<CR>

" open terminal
nnoremap <leader>t :term<CR>

" goyo.vim (고요)
map <leader>g :Goyo \| set linebreak<CR>

" detect trailing whitespace and other whitespace
set listchars=tab:>~,nbsp:_,trail:.
set list
