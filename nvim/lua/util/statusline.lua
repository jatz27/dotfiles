local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

--[[ local hide_in_width = function() ]]
--[[ 	return vim.fn.winwidth(0) > 80 ]]
--[[ end ]]
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "hint" },
	symbols = {
		error = " ",
		warn = " ",
		hint = " ",
	},
	colored = true,
	diagnostics_color = {
		error = { fg = "#e06c75" },
		warn = { fg = "#d19a66" },
		hint = { fg = "#61afef" },
	},
	update_in_insert = true,
	always_visible = true,
}

local diff = {
	"diff",
	symbols = { added = " ", modified = "柳", removed = " " }, -- changes diff symbols
	colored = true,
	diff_color = {
		added = { fg = "#98c379" },
		modified = { fg = "#61afef" },
		removed = { fg = "#e06c75" },
	},
	update_in_insert = true,
	always_visible = true,
	--[[ cond = hide_in_width, ]]
}

--[[ local mode = { ]]
--[[ 	"mode", ]]
--[[ 	fmt = function(str) ]]
--[[ 		return str ]]
--[[ 	end, ]]
--[[ } ]]
-- local filetype = {
-- 	"filetype",
-- 	icons_enabled = false,
-- 	icon = nil,
-- }

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
	color = { gui = "bold" },
}

--[[ local location = { ]]
--[[ 	"location", ]]
--[[ 	padding = 0, ]]
--[[ } ]]
-- cool function for progress
local progress_bar = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

-- local spaces = function()
-- 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
-- end

local lsp_client = {
	-- Lsp server name .
	function()
		local msg = "No Active Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	icon = " ",
	color = { gui = "bold" },
}

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		--[[ component_separators = { left = "", right = "" }, ]]
		component_separators = "|",
		section_separators = { left = "", right = "" },
		-- component_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		disabled_filetypes = {
			"alpha",
			"dashboard",
			"NvimTree",
			"Outline",
			"dbui",
		},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "", right = "" } },
		},
		lualine_b = { diagnostics, lsp_client },
		lualine_c = {},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = {
			{
				function()
					return require("noice").api.status.mode.get()
				end,
				cond = function()
					return package.loaded["noice"] and require("noice").api.status.mode.has()
				end,
				color = { fg = "#ff9364" },
			},
			{
				function()
					return require("noice").api.status.search.get()
				end,
				cond = function()
					return package.loaded["noice"] and require("noice").api.status.search.has()
				end,
				color = { fg = "#ff9364" },
			},
		},
		lualine_y = {
			branch,
			diff,
			"filetype",
			"fileformat",
		},
		lualine_z = { "progress", { progress_bar, separator = { right = "" } } },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
