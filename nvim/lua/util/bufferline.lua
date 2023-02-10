local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		--[[ numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string, ]]
		--close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		--right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		--left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		--middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		--indicator = { style = "icon", icon = "" },
		--[[ buffer_close_icon = "", ]]
		--buffer_close_icon = "",
		--modified_icon = "●",
		--close_icon = "",
		--[[ buffer_close_icon = "", ]]
		--left_trunc_marker = "",
		--right_trunc_marker = "",
		max_name_length = 14,
		max_prefix_length = 13, -- prefix used when a buffer is de-duplicated
		tab_size = 18,
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = true,
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or level:match("warning") and " " or " "
			return " " .. icon .. count
		end,
		offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center", padding = 0 } },
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		--show_close_icon = true,
		show_tab_indicators = true,
		--persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		--enforce_regular_tabs = true,
		always_show_bufferline = true,
		--mode = "buffers",
	},
	highlights = {
		separator = {
			fg = "#21232c",
			bg = "#21232c",
		},
		separator_selected = {
			fg = "#21232c",
		},
		background = {
			fg = "#657b83",
			bg = "#21232c",
		},
		buffer_selected = {
			fg = "#d1d4cf",
			italic = false,
			bold = false,
		},
		fill = {
			bg = "#21232c",
		},
		close_button = {
			fg = "#657b83",
			bg = "#21232c",
		},
		close_button_selected = {
			fg = "#e06c75",
			bg = "#282c34",
		},
		modified = {
			fg = "#e06c75",
			bg = "#21232c",
		},
		modified_selected = {
			fg = "#e06c75",
			bg = "#282c34",
		},
		modified_visible = {
			fg = "#e06c75",
			bg = "#282c34",
		},
		indicator_selected = {
			fg = "#282c34",
			bg = "#282c34",
		},
		error = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#e06c75",
		},
		error_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#e06c75",
		},
		error_diagnostic = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#e06c75",
		},
		error_diagnostic_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#e06c75",
		},
		warning = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#d19a66",
		},
		warning_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#d19a66",
		},
		warning_diagnostic = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#d19a66",
		},
		warning_diagnostic_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#d19a66",
		},
		hint = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		hint_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#61afef",
		},
		hint_diagnostic = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		hint_diagnostic_selected = {
			italic = false,
			bold = false,
			bg = "#282c34",
			fg = "#61afef",
		},
		info = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		info_selected = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		info_diagnostic = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		info_diagnostic_selected = {
			italic = false,
			bold = false,
			bg = "#21232c",
			fg = "#61afef",
		},
		pick_selected = {
			italic = false,
			bold = false,
		},
		pick_visible = {
			italic = false,
			bold = false,
		},
		pick = {
			italic = false,
			bold = false,
		},
	},
})
