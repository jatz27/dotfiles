return {
	"akinsho/toggleterm.nvim",
	lazy = true,
	event = "UIEnter",
	keys = {
		{ "<F1>", "<cmd>lua _PWSH_TOGGLE()<cr>", mode = { "n", "t" } },
		{ "<F2>", "<cmd>lua _PWSH_TOGGLE_F2()<cr>", mode = "n", "t" },
		{ "<F3>", "<cmd>lua _PWSH_TOGGLE_F3()<cr>", mode = "n", "t" },
	},
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<M-t>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "horizontal",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})
		function _G.set_terminal_keymaps()
			local opts = { noremap = true }
			vim.api.nvim_buf_set_keymap(0, "t", "<M-t>", [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "kj", [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		local Terminal = require("toggleterm.terminal").Terminal

		local pwsh = Terminal:new({
			direction = "float",
			hidden = true,
			close_mapping = [[<F1>]],
		})

		function _PWSH_TOGGLE()
			pwsh:toggle()
		end

		local pwsh_f2 = Terminal:new({
			direction = "float",
			hidden = true,
		})

		function _PWSH_TOGGLE_F2()
			pwsh_f2:toggle()
		end

		local pwsh_f3 = Terminal:new({
			direction = "float",
			hidden = true,
		})

		function _PWSH_TOGGLE_F3()
			pwsh_f3:toggle()
		end
	end,
}
