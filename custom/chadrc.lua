local M = {}

local userPlugins = require "custom.plugins"

M.plugins = {
  install = userPlugins,
  status = {
    better_escape = false, -- map to <ESC> with no lag
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    },
  },
  default_plugin_config_replace = {
    nvim_tree = {
      -- auto_close = true,
      view = {
        side = "right",
        width = 20,
      },
    },
  }
}

M.ui = {
  theme = "tokyonight",
  hl_override = "custom.colors.override", -- path of your file that contains highlights
  transparency = false,
}

return M
