require "custom.core.folding"
require "custom.core.autocmds"

-- Hardconfig
vim.g.nvim_tree_group_empty = 1

require("luasnip").filetype_extend("javascript", {"javascriptreact"})
