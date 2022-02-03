set background=dark
set hidden
colorscheme one
let g:airline_theme = 'one'
let g:one_allow_italics = 1 " I love italic for comments
hi Normal guibg=NONE ctermbg=NONE
" basic configuration
lua require('basic')
" lsp
lua require('lsp/lsp')
" Packer plugin manager
lua require('plugins')
lua require('keybindings')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/nvim-autopairs')
lua require('plugin-config/rust-tools')
lua require('plugin-config/telescope')
lua require('plugin-config/toggleterm')
lua require('plugin-config/dap')
lua require('plugin-config/dapui')
lua require('plugin-config/hop')



