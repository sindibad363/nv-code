" !bash ~/.config/nvim/update.sh

source packages.vim
source plugins/.init.vim

inoremap jk <ESC>

set mouse=a
set number
set hidden
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set encoding=utf8
set history=5000
set clipboard=unnamedplus
set termguicolors=true
set cindent
set updatetime=300
set shortmess+=c
set signcolumn=yes
set laststatus=2

colorscheme codedark

nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq<CR>
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr> 

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>

vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i

imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

map <C-v> pi
imap <C-v> <Esc>pi


