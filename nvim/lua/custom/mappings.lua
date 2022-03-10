local map = require("core.utils").map

map("n","<leader>cc",":Telescope <CR>")
map("n","<leader>q",":q <CR>")

-- truezen
map("n","<leader>ta",":TZAtaraxis <CR>")
map("n","<leader>tm",":TZMinimalist <CR>")
map("n","<leader>tf",":TZFocus <CR>")

-- hop
map("n","<leader><leader>w",":HopWord<CR>")
map("n","<leader><leader>l",":HopLine<CR>")
map("n","<leader><leader>s",":HopLineStart<CR>")
map("n","<leader><leader>/",":HopPattern<CR>")
