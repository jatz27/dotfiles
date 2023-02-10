return {
	"kyazdani42/nvim-tree.lua",
	lazy = true,
	cmd = {
		"NvimTreeToggle",
	},
	keys = {
		{ "<M-n>", "<cmd>NvimTreeToggle<cr>", mode = "n" },
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				highlight_git = true,
				root_folder_modifier = ":t",
				icons = {
					show = {
						git = true,
						folder = true,
						file = true,
						folder_arrow = true,
					},
					glyphs = {
						default = "",
						symlink = "",
						git = {
							unstaged = "",
							staged = "S",
							unmerged = "",
							renamed = "➜",
							deleted = "",
							untracked = "U",
							ignored = "◌",
						},
						folder = {
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
						},
					},
				},
			},
			disable_netrw = true,
			hijack_netrw = true,
			--[[ open_on_setup = false, ]]
			--[[ ignore_ft_on_setup = { ]]
			--[[ 	"startify", ]]
			--[[ 	"dashboard", ]]
			--[[ 	"alpha", ]]
			--[[ }, ]]
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			update_focused_file = {
				enable = true,
				update_cwd = true,
				update_root = true,
				ignore_list = {},
			},
			git = {
				enable = true,
				ignore = true,
				timeout = 500,
			},
			view = {
				--[[ width = 30, ]]
				--[[ height = 30, ]]
				hide_root_folder = false,
				side = "left",
				mappings = {
					custom_only = false,
					list = {
						{ key = "l", action = "edit" },
						{ key = "h", action = "close_node" },
					},
				},
				number = false,
				relativenumber = false,
			},
			actions = {
				use_system_clipboard = true,
				open_file = {
					quit_on_open = false,
					resize_window = true,
				},
			},
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
		})
		--[[ Auto Close ]]
		vim.o.confirm = true
		vim.api.nvim_create_autocmd("BufEnter", {
			group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
			callback = function()
				local layout = vim.api.nvim_call_function("winlayout", {})
				if
					layout[1] == "leaf"
					and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
					and layout[3] == nil
				then
					vim.cmd("quit")
				end
			end,
		})
		---------------------------------------------------------------------------------------------
	end,
}
