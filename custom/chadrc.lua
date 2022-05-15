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
  theme_toggle = { "tokyonight", "one_light" },
  hl_override = {
    Folded = { fg="white", bg = "one_bg3" },
    Comment = { fg="vibrant_green" }
  },
}

M.mappings = require "custom.core.mappings"

return M
