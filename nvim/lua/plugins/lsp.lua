return {
	"neovim/nvim-lspconfig", -- Enable LSP
	dependencies = {
		"williamboman/mason.nvim", -- simple to use language server installer
		"williamboman/mason-lspconfig.nvim",
		"RRethy/vim-illuminate",
		"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
		"nvim-lua/plenary.nvim",
		"glepnir/lspsaga.nvim", -- LSP UIs
	},
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = function()
		require("util.lsp")
	end,
}
