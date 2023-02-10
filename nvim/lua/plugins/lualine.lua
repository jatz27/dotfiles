return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
	},
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	config = function()
		require("util.statusline")
	end,
}
