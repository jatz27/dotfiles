local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.g.mapleader = " "

-- Salir y guardar
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<A-q>", ":q!<CR>")

-- Eliminar un buffer
--[[ mapper("n", "<leader>dd", ":bd<CR>") ]]

-- dividir pantalla
--[[ mapper("n", "<leader>dv", ":vsplit<CR>") ]]
--[[ mapper("n", "<leader>dh", ":split<CR>") ]]

-- Move in buffers
mapper("n", "<S-l>", ":bnext<CR>")
mapper("n", "<S-h>", ":bprevious<CR>")
-- Move in tabs
mapper("n", "<TAB>", ":tabNext<CR>")
mapper("n", "<TAB-q>", ":tabclose<CR>")

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

-- Maximisar ventanas
--[[ mapper("n", "<A-m>", ":MaximizerToggle<CR>") ]]

-- Telescope
mapper("n", "<A-f>", "<cmd>Telescope find_files<CR>")

-- EasyMotion
mapper("n", "s", "<Plug>(easymotion-overwin-f2)")
mapper("n", "n", "<Plug>(easymotion-next)")
mapper("n", "N", "<Plug>(easymotion-prev)")

--[[ mapper("n", "<leader>th", "<cmd>Telescope help_tags<CR>") ]]
--[[ mapper("n", "<leader>tgs", "<cmd>Telescope git_status<CR>") ]]
--[[ mapper("n", "<leader>tgc", "<cmd>Telescope git_commits<CR>") ]]
--[[ mapper("n", "<leader>tgb", "<cmd>Telescope git_branches<CR>") ]]
--[[ mapper("n", "<leader>tp", "<cmd>Telescope projects<CR>") ]]

-- Terminal
--[[ mapper("n", "<A-t>", "<cmd>lua _PWSH_TOGGLE()<CR>") ]]
-- mapper("t", "<C-t>", "<cmd>lua _PWSH_TOGGLE()<CR>")
-- Lazygit
--[[ mapper("n", "<leader>gg", ":LazyGit<CR>") ]]

-- Nvim-Tree
-- Abrir nvim-tree
--[[ mapper("n", "<A-n>", ":NvimTreeToggle<CR>") ]]
-- refrescar nvim-tree
--[[ mapper("n", "<leader>r", ":NvimTreeToggle<CR>") ]]

-- Formater codigo
--[[ mapper("n", "<leader>f", ":Format<CR>") ]]
