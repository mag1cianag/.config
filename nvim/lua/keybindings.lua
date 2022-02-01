local map = vim.api.nvim_set_keymap
local opt = {noremap = true,silent = true}

map("i","jk","<esc>",opt)

-- nvim-tree
map('n', '<leader>f', ':NvimTreeToggle<CR>',opt)
map('n', '<leader>d', ':bd<CR>',opt)

-- telescope
map('n','<space>ff',"<cmd>lua  require('telescope.builtin').find_files()<cr>",opt)
map('n','<space>fg',"<cmd>lua  require('telescope.builtin').live_grep()<cr>",opt)
map('n','<space>fb',"<cmd>lua  require('telescope.builtin').buffers()<cr>",opt)
map('n','<space>fh',"<cmd>lua  require('telescope.builtin').help_tags()<cr>",opt)

-- FTerm
map('n', '<space>t', '<cmd>lua require("FTerm").toggle()<CR>', opt)
map('t', '<space>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opt)
