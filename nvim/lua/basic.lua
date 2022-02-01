-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- relativenumber
vim.wo.number = true
vim.wo.relativenumber = true
-- highlight cursor line 
vim.wo.cursorline = false
-- 
vim.wo.signcolumn = "yes"
-- always show tabline
vim.o.showtabline = 2
-- set autoread
vim.o.autoread = true
vim.bo.autoread = true
-- set mouse
vim.o.mouse = "a"
-- termcolor
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.updatetime = 300
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
