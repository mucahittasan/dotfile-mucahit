local wezterm = require("wezterm")
local config = {}

config.font_size = 20.0
config.font = wezterm.font("JetBrains Mono")
config.freetype_load_target = "Light"

config.initial_cols = 140
config.initial_rows = 37

config.max_fps = 120
config.animation_fps = 120

config.window_close_confirmation = "NeverPrompt"

local schemes = wezterm.color.get_builtin_schemes()
local scheme = schemes["Solarized (dark) (terminal.sexy)"]

scheme.background = "#031219"

config.colors = scheme

config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	},
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font("JetBrains Mono", { italic = true }),
	},
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true }),
	},
}

config.adjust_window_size_when_changing_font_size = false
config.enable_tab_bar = false

config.macos_window_background_blur = 20
config.window_background_opacity = 0.9

config.window_decorations = "RESIZE"

config.keys = {
	{
		key = "q",
		mods = "CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "'",
		mods = "CTRL",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
}

config.use_fancy_tab_bar = false

config.window_padding = {
	left = 12,
	right = 12,
	top = 0,
	bottom = 0,
}

config.window_frame = {
	border_left_width = "12px",
	border_right_width = "12px",
	border_top_height = "0px",
	border_bottom_height = "0px",
}

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

return config
