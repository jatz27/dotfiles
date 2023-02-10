return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
		"moll/vim-bbye",
		"szw/vim-maximizer",
	},
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	keys = {
		{ "<M-c>", "<cmd>Bdelete!<cr>", mode = "n", desc = "Close Buffer" },
		{ "<M-m>", "<cmd>MaximizerToggle<cr>", mode = "n", desc = "Maximizer Buffer" },
	},
	config = function()
		require("util.bufferline")
	end,
}
