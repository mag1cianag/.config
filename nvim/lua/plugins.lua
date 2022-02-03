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
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
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
end)

