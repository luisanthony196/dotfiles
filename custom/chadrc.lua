local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    },
  },
  override = {
    ["kyazdani42/nvim-tree.lua"] = plugin_conf.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = plugin_conf.treesitter
  },
  remove = {
    "max397574/better-escape.nvim",
    "NvChad/nvterm"
  },
  user = userPlugins,
}

M.ui = {
  theme = "tokyonight",
  hl_override = {
    Folded = { fg="#ffffff", bg = "#40404a" },
  },
}

return M
