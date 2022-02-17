set background=dark
set hidden
colorscheme nightfox
" let g:airline_theme = 'one'
" hi Normal guibg=NONE ctermbg=NONE
set splitright
set splitbelow

" basic configuration
lua require('basic')
" lsp
lua require('lsp/lsp')
lua require('plugins')
lua require('plugin-config/nvim-autopairs')
lua require('keybindings')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/rust-tools')
lua require('plugin-config/telescope')
lua require('plugin-config/toggleterm')
lua require('plugin-config/dap')
lua require('plugin-config/dapui')
lua require('plugin-config/hop')



