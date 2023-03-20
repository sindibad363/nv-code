require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  use {'neoclide/coc.nvim', branch='release' }
  
  use {'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }
  
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  
  use {'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'},
  }
  use {'romgrk/barbar.nvim', 
    requires = 'nvim-web-devicons',}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { "bluz71/vim-moonfly-colors", as = "moonfly" }

  use { 'numToStr/Comment.nvim',
--    config = function() require('Comment').setup() end
  }
end);

