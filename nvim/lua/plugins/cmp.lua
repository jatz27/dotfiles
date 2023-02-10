return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- buffer complete
		"hrsh7th/cmp-path", -- path complete
		"hrsh7th/cmp-cmdline", -- cmdline complete
		"saadparwaiz1/cmp_luasnip", -- snippet complete lua
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		-- snippets
		"L3MON4D3/LuaSnip", --snippet engine
		"rafamadriz/friendly-snippets", -- a bunch of snippets to use
		-- Tabnine complete
	{ "tzachar/cmp-tabnine", build = "./install.sh" },
	},
	config = function()
		require("util.cmp")
	end,
}
