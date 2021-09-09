return require('packer').startup(function()
    -- Let packer manage itself

    use 'wbthomason/packer.nvim'

    -- Colorscheme / Syntax Highlighting

    use 'arcticicestudio/nord-vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Better syntax highlighting

    -- Statusline / Bufferline

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
        'akinsho/bufferline.nvim', 
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Tree / Explorer

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Language support

    use 'LnL7/vim-nix'
    use 'neovimhaskell/haskell-vim'
    use 'vim-crystal/vim-crystal'
    use 'rust-lang/rust.vim'

    -- Code Completion

    use {
      'neoclide/coc.nvim',
      branch = 'release'
    }

    -- FZF

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- QoL

    use 'jiangmiao/auto-pairs'

end)
