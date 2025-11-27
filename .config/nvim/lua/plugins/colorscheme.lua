return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				terminal_colors = true,

				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "transparent",
					floats = "transparent",
				},

				sidebars = {
					"qf",
					"help",
					"neo-tree",
					"lazy",
					"Trouble",
					"spectre_panel",
				},

				on_highlights = function(hl, c)
					hl.Normal = { fg = c.fg, bg = "none" }
					hl.NormalNC = { fg = c.fg, bg = "none" }
					hl.SignColumn = { bg = "none" }
					hl.StatusLine = { fg = c.fg, bg = "none" }
					hl.StatusLineNC = { fg = c.fg, bg = "none" }
					hl.WinSeparator = { fg = hl.WinSeparator and hl.WinSeparator.fg or c.border, bg = "none" }
					hl.NormalFloat = { fg = c.fg, bg = "none" }
					hl.FloatBorder = { fg = c.border, bg = "none" }
				end,
			}
		end,
		config = function(_, opts)
			require("solarized-osaka").setup(opts)
			vim.cmd.colorscheme("solarized-osaka")
		end,
	},
}
