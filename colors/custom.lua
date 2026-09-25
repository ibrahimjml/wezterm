local M = {}

-- Tokyo Night (Moon variant) color scheme
M.name = "tokyonight-custom"

M.colors = {
	foreground = "#c8d3f5",
	background = "#222436",
	cursor_bg = "#c8d3f5",
	cursor_fg = "#222436",
	cursor_border = "#c8d3f5",
	selection_fg = "#c8d3f5",
	selection_bg = "#2d3f76",

	ansi = {
		"#1b1d2b", -- black
		"#ff757f", -- red
		"#c3e88d", -- green
		"#ffc777", -- yellow
		"#82aaff", -- blue
		"#c099ff", -- magenta
		"#86e1fc", -- cyan
		"#828bb8", -- white
	},

	brights = {
		"#444a73", -- bright black
		"#ff8d94", -- bright red
		"#c7fb6d", -- bright green
		"#ffd8ab", -- bright yellow
		"#9ab8ff", -- bright blue
		"#caabff", -- bright magenta
		"#b2ebff", -- bright cyan
		"#c8d3f5", -- bright white
	},

	tab_bar = {
		background = "#1e2030",

		active_tab = {
			bg_color = "#2d3f76",
			fg_color = "#c8d3f5",
			intensity = "Bold",
		},

		inactive_tab = {
			bg_color = "#1e2030",
			fg_color = "#828bb8",
		},

		inactive_tab_hover = {
			bg_color = "#2d3f76",
			fg_color = "#c8d3f5",
			italic = true,
		},

		new_tab = {
			bg_color = "#1e2030",
			fg_color = "#828bb8",
		},

		new_tab_hover = {
			bg_color = "#2d3f76",
			fg_color = "#c8d3f5",
			italic = true,
		},
	},

	split = "#444a73",
}

return M
