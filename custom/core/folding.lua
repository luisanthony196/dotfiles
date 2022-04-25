local opt = vim.opt

-- Enable folding options
opt.foldenable = false
opt.foldlevel = 99
opt.fillchars = { eob = '-', fold = ' ' }
opt.foldmethod = 'indent'
opt.foldtext = 'v:lua.custom_fold_text()'
-- opt.foldmethod = 'expr'
-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Custom fold function
function _G.custom_fold_text()
  -- local code = vim.fn['getline'](vim.v.foldstart)
  local indentation = vim.fn['indent'](vim.v.foldstart - 1) + vim.o.shiftwidth
  local foldSize = 1 + vim.v.foldend - vim.v.foldstart
  local foldSizeStr = ' ' .. foldSize .. ' lines '
  local foldLevelStr = string.rep('-<<', vim.v.foldlevel)
  local expansionString = string.rep(' ', indentation)
  return expansionString .. foldLevelStr .. foldSizeStr
end
