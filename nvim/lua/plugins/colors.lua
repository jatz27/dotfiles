return {
	"AlexvZyl/nordic.nvim",
	dependencies = {
		"rktjmp/lush.nvim",
		"kyazdani42/nvim-web-devicons", --Iconos
	},
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").load({
			theme = "nordic",
			bold_keywords = true,
			italic_comments = false,
			transparent_bg = false,
			noice = {
				style = "flat",
			},
			telescope = {
				style = "flat",
			},
			lspsaga = {
				style = "flat",
			},
			leap = {
				dim_backdrop = false,
			},
		})
	end,
}
