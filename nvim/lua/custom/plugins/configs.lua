local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "bash",
  },
  indent  = {
    enable = true
  } 
}

M.nvimtree = {
  git = {
    enable = true,
  },
}
return M
