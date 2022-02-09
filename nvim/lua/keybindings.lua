local map = vim.api.nvim_set_keymap
local opt = {noremap = true,silent = true}

map("i","jk","<esc>",opt)
map('n', '<leader>d', ':bd<CR>',opt)

-- nvim-tree
map('n', '<leader>f', ':NvimTreeToggle<CR>',opt)

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

-- dap
map('n','<space>db',"<cmd>lua require('dap').toggle_breakpoint()<CR>",opt)
map('n','<space>dB',"<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",opt)
map('n','<space>ds',"<cmd>lua require('dap').close()<CR>",opt)
map('n','<space>dc',"<cmd>lua require('dap').continue()<CR>",opt)
map('n','<space>dr',"<cmd>lua require('dap').repl.toggle()<CR>",opt)
map('n','<a-k>',"<cmd>lua require('dap').step_out()<CR>",opt)
map('n','<a-j>',"<cmd>lua require('dap').step_into()<CR>",opt)
map('n','<a-n>',"<cmd>lua require('dap').step_over()<CR>",opt)

--hop easymotion like
-- place this in one of your configuration file(s)
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opt)
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opt)
map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", opt)
map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", opt)
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opt)
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opt)
map('n','<leader><leader>w',':HopWord<CR>',opt)
map('n','<leader><leader>l',':HopLine<CR>',opt)
map('n','<leader><leader>s',':HopLineStart<CR>',opt)
map('n','<leader><leader>/',':HopPattern<CR>',opt)

--window
map("n", "<space>wv", ":vsp<CR>", opt)
map("n", "<space>wh", ":sp<CR>", opt)
map("n", "<sapce>wc", "<C-w>c", opt)
map("n", "<space>wo", "<C-w>o", opt) -- close others

map("n", "<space>h", "<C-w>h", opt)
map("n", "<space>j", "<C-w>j", opt)
map("n", "<space>k", "<C-w>k", opt)
map("n", "<space>l", "<C-w>l", opt)

-- symbols-outline
map("n", "K", ":SymbolsOutline<CR>", opt)

-- bufferline
map('n',"<a->>",":BufferLineMoveNext<CR>",opt)
map('n',"<a-<>",":BufferLineMovePrev<CR>",opt)
map('n',"<a-1>",":BufferLineGoToBuffer 1<CR>",opt)
map('n',"<a-2>",":BufferLineGoToBuffer 2<CR>",opt)
map('n',"<a-3>",":BufferLineGoToBuffer 3<CR>",opt)
map('n',"<a-4>",":BufferLineGoToBuffer 4<CR>",opt)
map('n',"<a-5>",":BufferLineGoToBuffer 5<CR>",opt)
map('n',"<a-6>",":BufferLineGoToBuffer 6<CR>",opt)
map('n',"<a-7>",":BufferLineGoToBuffer 7<CR>",opt)
map('n',"<a-8>",":BufferLineGoToBuffer 8<CR>",opt)
map('n',"<a-9>",":BufferLineGoToBuffer 9<CR>",opt)
