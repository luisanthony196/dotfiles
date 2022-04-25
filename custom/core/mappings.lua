local map = require("core.utils").map

-- F1 y F2 para guardar y cerrar
map("n", "<F1>", ":w <CR>")
map("n", "<F2>", ":q <CR>")
-- Copiar y pegar en el portapapeles
map("v", "<leader>y", "\"*y")
map("n", "<leader>p", "\"*p")
-- Doblar por identacion
map("n", "<leader><TAB>", "za")
-- Habilitar permisos en los ileibles
map("n", "<F5>", ":SudaRead <CR>")
map("n", "<leader>g", ":Gitsigns preview_hunk <CR>")
