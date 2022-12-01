if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.config/nvim-plugins')

Plug 'dense-analysis/ale' " Language Client
Plug 'mattn/emmet-vim' " Type abbreviations

"  Coc Alternative
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" /Coc Alternative

"  NERDTree
Plug 'preservim/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'johnstef99/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
" /NerdTree

Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter' " 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }"
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'  
Plug 'vim-airline/vim-airline-themes'
" Plug 'Yggdroot/indentLine' 
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


