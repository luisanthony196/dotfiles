local M = {}

M.disabled = {
  n = {
    ["<leader>v"] = "",
  }
}

M.general = {
  n = {
    ["<F1>"] = { ":w <CR>", "﬚  save file" },
    ["<F2>"] = { ":bufdo bf | q <CR>", "   close all" },
    ["<F5>"] = { ":SudaRead <CR>", "   root permission" },
    -- ["<leader>h"] = { ":Gitsigns preview_hunk <CR>", " preview hunk" },
    ["<leader><TAB>"] = { "za", "   toggle fold" },
    ["<CR>"] = { ":noh<CR><CR>", "clear search" },
  },
  v = {
    ["<leader>y"] = { "\"*y", "   copy to clipboard" },
  }
}

M.telescope = {
  n = {
    ["<leader>p"] = { "\"*p", "   paste from clipboard" },
  }
}

M.nvterm = {
  n = {
    ["<leader>h"] = { ":Gitsigns preview_hunk <CR>", "   preview hunk" },
    ["<leader>v"] = "",
  }
}

return M
