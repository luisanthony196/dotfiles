require "custom.core.mappings"
require "custom.core.folding"

-- Hardconfig
vim.g.nvim_tree_group_empty = 1

-- Autoload
vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 ]]
