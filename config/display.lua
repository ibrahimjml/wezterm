local wezterm = require("wezterm")
local background = require("config.background")
local fonts = require("config.fonts")
local custom_colors = require("colors.custom")
local M = {}

function M.setup(config)

	-- Appearance
	config.font = fonts.font
	config.font_size = fonts.font_size
	config.color_schemes = {
		[custom_colors.name] = custom_colors.colors,
	}
	config.color_scheme = custom_colors.name
        
        -- cursor settings
        config.default_cursor_style = "BlinkingBlock"
        config.cursor_blink_rate = 500
        cusror_blink_ease_in = "EaseOut"
        cusror_blink_ease_out = "EaseOut"

	-- Tab bar settings
	config.enable_tab_bar = true
	config.hide_tab_bar_if_only_one_tab = false
	config.use_fancy_tab_bar = false
	-- Window settings
	config.window_decorations = "RESIZE"
	config.window_frame = {
		-- title bar
		active_titlebar_bg = "#333333",
		inactive_titlebar_bg = "#222222",
	}
	config.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
        config.window_close_confirmation = "NeverPrompt"

        -- Front-end settings 
        -- config.front_end = "WebGpu"
        -- config.animation_fps = 60

        -- Scrollback settings
        config.scrollback_lines = 2000

	-- Performance settings
	-- config.max_fps = 120
	-- config.animation_fps = 1

        -- Layout and appearance settings
	config.use_fancy_tab_bar = false
	config.window_background_image = background.bg_image
	config.window_background_opacity = 0.8 -- lower = more transparent
	config.initial_cols = 120
	config.initial_rows = 30
	config.warn_about_missing_glyphs = false
end

return M
