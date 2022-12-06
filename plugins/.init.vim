if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.config/nvim-plugins')
    Plug 'thisisrandy/vim-outdated-plugins'
    Plug 'dense-analysis/ale'
    Plug 'mattn/emmet-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Files On Left 
    Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
    Plug 'nvim-tree/nvim-tree.lua'

    Plug 'romgrk/barbar.nvim' " Tabs bar
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }

    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
    Plug 'scrooloose/nerdcommenter'
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
call plug#end()

if empty(glob('~/.config/nvim-plugins'))
  silent !mkdir ~/.config/nvim-plugins
  PlugClean
  PlugInstall 
  PlugUpgrade 
  PlugUpdate
endif

"autocmd VimEnter * call CheckOutdatedPlugins()
"let g:outdated_plugins_trigger_mode = 1

" If Run first time Initialize Plugins
let g:outdated_plugins_silent_mode = 1

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif


source  ~/.config/nvim/plugins/Airline.vim
source  ~/.config/nvim/plugins/Ale.vim
luafile ~/.config/nvim/plugins/BarBar.lua
source  ~/.config/nvim/plugins/BarBar.vim
source  ~/.config/nvim/plugins/Coc.vim
source  ~/.config/nvim/plugins/CtrlP.vim
source  ~/.config/nvim/plugins/NERDCommenter.vim
luafile ~/.config/nvim/plugins/NVimTree.lua
source  ~/.config/nvim/plugins/ToggleTerm.vim
source  ~/.config/nvim/plugins/Vim-Prettier.vim
