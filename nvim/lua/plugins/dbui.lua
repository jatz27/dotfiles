return {
	"kristijanhusak/vim-dadbod-ui",
	lazy = true,
	cmd = {
		"DBUI",
	},
	dependencies = {
		"tpope/vim-dadbod",
		"kristijanhusak/vim-dadbod-completion",
		"tpope/vim-dotenv",
	},
	config = function()
		vim.g.db_ui_use_nerd_fonts = 1
		vim.g.db_ui_force_echo_notifications = 1
		vim.g.db_ui_winwidth = 30
		--[[ vim.g.db_win_position = "right" ]]
		vim.g.db_ui_save_location = "database/"

		vim.g.db_ui_icons = {
			expanded = {
				db = "▾ ",
				buffers = "▾ ",
				saved_queries = "▾ ",
				schemas = "▾ ",
				schema = "▾ פּ",
				tables = "▾ 藺",
				table = "▾ ",
			},
			collapsed = {
				db = "▸ ",

				buffers = "▸ ",
				saved_queries = "▸ ",
				schemas = "▸ ",
				schema = "▸ פּ",
				tables = "▸ 藺",
				table = "▸ ",
			},
			saved_query = "",
			new_query = "璘",
			tables = "離",
			buffers = "﬘",
			add_connection = "",
			connection_ok = "✓",
			connection_error = "✕",
		}
	end,
}
