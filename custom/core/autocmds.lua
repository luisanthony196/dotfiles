local autocmd = vim.api.nvim_create_autocmd

-- File extension specific tabbing
autocmd("Filetype", {
   pattern = "python",
   callback = function()
      vim.opt_local.expandtab = true
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
      vim.opt_local.softtabstop = 2
   end,
})
