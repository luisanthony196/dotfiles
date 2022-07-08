local M = {}

M.disabled = {
  n = {
    ["<leader>v"] = "",
  }
}

M.general = {
  n = {
    ["<esc>"] = { ":noh <CR>", "  clear search" },
    ["<F1>"] = { ":w <CR>", "﬚  save file" },
    ["<F2>"] = { ":bufdo bf | q <CR>", "   close all" },
    ["<F5>"] = { ":SudaRead <CR>", "   root permission" },
    -- ["<leader>h"] = { ":Gitsigns preview_hunk <CR>", " preview hunk" },
    ["<leader><TAB>"] = { "za", "   toggle fold" },
  },
  v = {
    ["<leader>y"] = { "\"*y", "   copy to clipboard" },
  },
  i = {
    ["jk"] = { "<C-o>:LuaSnipUnlinkCurrent <CR>", "   delete snip" },
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
