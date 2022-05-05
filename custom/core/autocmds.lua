local autocmd = vim.api.nvim_create_autocmd

-- Uncomment this if you want to open nvim with a dir
autocmd("BufEnter", {
   callback = function()
     vim.highlight.create('MatchParen', {ctermbg=0, guibg='#40404a'}, false)
   end,
})

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

-- Highlight yanked text
-- autocmd("TextYankPost", {
--    callback = function()
--       vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
--    end,
-- })

-- Enable spellchecking in markdown, text and gitcommit files
-- autocmd("FileType", {
--    pattern = { "gitcommit", "markdown", "text" },
--    callback = function()
--       vim.opt_local.spell = true
--    end,
-- })
