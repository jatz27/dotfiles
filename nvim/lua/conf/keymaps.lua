local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.g.mapleader = " "

-- Salir y guardar
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<S-q>", ":q!<CR>")

-- dividir pantalla
mapper("n", "<M-|>", ":vsplit<CR>")
mapper("n", "<M-_>", ":split<CR>")

-- TAB siguiente buffer
mapper("n", "<S-l>", ":bnext<CR>")
-- SHIFT-TAB previo buffer
mapper("n", "<S-h>", ":bprevious<CR>")

--[[ Move in tabs ]]
mapper("n", "<TAB>", ":tabNext<CR>")
mapper("n", "<S-TAB>", ":tabprivius<CR>")
mapper("n", "<A-q>", ":tabclose<CR>")

-- Regresar a modo insertar con jk
mapper("i", "jk", "<Esc>")
mapper("i", "kj", "<Esc>")
-- Control-c escape
mapper("n", "<C-c>", "<Esc>")
mapper("v", "<C-c>", "<Esc>")

-- Better window navigation
mapper("n", "<C-h>", "<C-w>h")
mapper("n", "<C-j>", "<C-w>j")
mapper("n", "<C-k>", "<C-w>k")
mapper("n", "<C-l>", "<C-w>l")

-- Usando alt + hjkl cambia el tamanio de las ventanas
mapper("n", "<M-j>", ":resize -2<CR>")
mapper("n", "<M-k>", ":resize +2<CR>")
mapper("n", "<M-h>", ":vertical resize -2<CR>")
mapper("n", "<M-l>", ":vertical resize +2<CR>")

-- Borrar el resaltado de busquedas /
mapper("n", ".,", ":nohlsearch<CR>")
mapper("n", ",.", ":nohlsearch<CR>")

-- Desahacer
mapper("n", "<C-z>", "u")

-- Indentar desde modo visual
mapper("v", "<", "<gv")
mapper("v", ">", ">gv")
-- Mover texto arriba y abajo en modo visual
mapper("v", "J", ":move '>+1<CR>gv-gv")
mapper("v", "K", ":move '<-2<CR>gv-gv")
