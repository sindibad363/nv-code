!bash ~/.config/nvim/update.sh
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

endif

" Specify a directory for plugins
call plug#begin('~/.config/nvim-plugins')

Plug 'dense-analysis/ale' " Language Client
Plug 'mattn/emmet-vim' " Type abbreviations

" Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code Autocompletion

" Coc Alternative
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" NERDTree
Plug 'preservim/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'johnstef99/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter' " 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }"
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'  
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine' 
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tomasiser/vim-code-dark'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Initialize plugin system
call plug#end()

" If Run first time Initialize Plugins
if empty(glob('~/.config/nvim-plugins'))
  silent !mkdir ~/.config/nvim-plugins
  PlugClean
  PlugInstall 
  PlugUpgrade 
  PlugUpdate
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

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
set hidden


" ToggleTerm"
autocmd TermEnter term://*toggleterm#* 
    \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


" open NERDTree automatically"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeIgnore = ['^node_modules$']

"vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc

" run prettier on save
let g:prettier#autoformat = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync


" ctrlp"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)"
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq<CR>

" shift+arrow selection"
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
imap <C-v> <Esc>pi

set cindent
colorscheme codedark

" sync open file with NERDTree"
" Check if NERDTree is open or active"
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable"
" file, and we're not in vimdiff"
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

et laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='base16_twilight'

let g:airline#extensions#tabline#formatter = 'default'

nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr>

let g:ale_completion_enabled = 0
let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}

lua << EOF
require("toggleterm").setup{};
OF


