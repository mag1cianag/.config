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
map('n','<sapce>fh',"<cmd>lua  require('telescope.builtin').help_tags()<cr>",opt)

-- term
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


