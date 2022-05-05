local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "css",
    "dockerfile",
    "html",
    "java",
    "javascript",
    "json",
    "markdown",
    "lua",
    "python",
    "vim",
    "yaml",
  },
}

M.nvimtree = {
  view = {
    side = "right",
    width = 20
  }
}

return M
