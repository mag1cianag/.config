return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --plugins
    --vim-one
    use 'rakr/vim-one'
    -- bufferline
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- nvim-tree 
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- nvim-autopairs
    use 'windwp/nvim-autopairs'
    ---------------------------------lsp-----------------------
    use 'neovim/nvim-lspconfig'
    use {"ms-jpq/coq_nvim",
        branch = 'coq'
    }
    use {"ms-jpq/coq.artifacts",
        branch = 'artifacts'
    }
    use {"ms-jpq/coq.thirdparty",
        branch = '3p'
    }

    --rust
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use   'simrat39/rust-tools.nvim'
    --ui
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "akinsho/toggleterm.nvim" --term
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} } -- dap-ui
    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
    }
    use "mhinz/vim-startify"
    use {
        'simrat39/symbols-outline.nvim',
        after = "nvim-lspconfig",
        config = function() 
            require'symbols-outline'.setup{}
        end
    }
    use({
        "NTBBloodbath/galaxyline.nvim",
        -- your statusline
        config = function()
            require("galaxyline.themes.eviline")
        end,
        -- some optional icons
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })
    use {
        "ellisonleao/glow.nvim",
        run = function ()
            require('glow').download_glow()
        end
    }
end)

