return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
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
					-- Transparency for UI elements
					hl.Normal = { fg = c.fg, bg = "none" }
					hl.NormalNC = { fg = c.fg, bg = "none" }
					hl.SignColumn = { bg = "none" }
					hl.StatusLine = { fg = c.fg, bg = "none" }
					hl.StatusLineNC = { fg = c.fg, bg = "none" }
					hl.WinSeparator = { fg = hl.WinSeparator and hl.WinSeparator.fg or c.border, bg = "none" }
					hl.NormalFloat = { fg = c.fg, bg = "none" }
					hl.FloatBorder = { fg = c.border, bg = "none" }

					-- Import statements - imported variables/functions should be yellow
					hl.typescriptIdentifierName = { fg = c.yellow }
					hl.typescriptDefaultImportName = { fg = c.yellow }
					hl.typescriptImport = { fg = c.red }

					-- JavaScript - same as TypeScript
					hl.javascriptIdentifierName = { fg = c.yellow }
					hl.javascriptImport = { fg = c.red }

					-- const/let/var keywords should be green
					hl.typescriptVariable = { fg = c.green }
					hl.javascriptVariable = { fg = c.green }
					hl["@keyword.storage"] = { fg = c.green }

					-- Variable names (const session, let user, etc) should be yellow/orange
					hl.typescriptVariableDeclaration = { fg = c.yellow }
					hl.javascriptVariableDeclaration = { fg = c.yellow }
					hl["@variable"] = { fg = c.orange }
					hl["@variable.builtin"] = { fg = c.red }
					hl["@variable.member"] = { fg = c.fg }
					hl["@variable.parameter"] = { fg = c.fg }

					-- LSP Semantic Tokens for JavaScript/TypeScript variables
					hl["@lsp.type.variable"] = { fg = c.yellow }
					hl["@lsp.type.variable.javascript"] = { fg = c.yellow }
					hl["@lsp.type.variable.typescript"] = { fg = c.yellow }
					hl["@lsp.typemod.variable.declaration"] = { fg = c.yellow }
					hl["@lsp.typemod.variable.declaration.javascript"] = { fg = c.yellow }
					hl["@lsp.typemod.variable.declaration.typescript"] = { fg = c.yellow }
					hl["@lsp.typemod.variable.readonly"] = { fg = c.yellow }
					hl["@lsp.mod.declaration"] = {}

					-- Treesitter HTML/JSX/TSX tag highlighting
					hl["@tag"] = { fg = c.red }
					hl["@tag.tsx"] = { fg = c.red }
					hl["@tag.jsx"] = { fg = c.red }
					hl["@tag.builtin"] = { fg = c.red }
					hl["@tag.builtin.tsx"] = { fg = c.red }

					-- Tag delimiters (< > / )
					hl["@tag.delimiter"] = { fg = c.red }
					hl["@tag.delimiter.tsx"] = { fg = c.red }
					hl["@tag.delimiter.jsx"] = { fg = c.red }

					-- Tag attributes (className, href, etc) - BLUE not yellow
					hl["@tag.attribute"] = { fg = c.blue }
					hl["@tag.attribute.tsx"] = { fg = c.blue }
					hl["@tag.attribute.jsx"] = { fg = c.blue }

					-- Custom React/JSX components - YELLOW
					hl["@constructor"] = { fg = c.yellow }
					hl["@constructor.tsx"] = { fg = c.yellow }
					hl["@constructor.jsx"] = { fg = c.yellow }

					-- Old Vim syntax groups for TSX (fallback)
					hl.htmlTag = { fg = c.red }
					hl.htmlTagName = { fg = c.red }
					hl.htmlEndTag = { fg = c.red }
					hl.htmlArg = { fg = c.blue }
					hl.htmlSpecialTagName = { fg = c.red }

					-- TSX-specific syntax groups
					hl.tsxTag = { fg = c.red }
					hl.tsxIntrinsicTagName = { fg = c.red } -- HTML tags (div, section, etc)
					hl.tsxTagName = { fg = c.yellow } -- Custom components (Hero, Features, etc)
					hl.tsxAttrib = { fg = c.blue }
					hl.tsxCloseTag = { fg = c.red }
					hl.tsxCloseString = { fg = c.red }
					hl.tsxComponentName = { fg = c.yellow }

					-- CSS syntax highlighting
					hl.cssClassName = { fg = c.yellow }
					hl.cssClassNameDot = { fg = c.fg }
					hl.cssTagName = { fg = c.yellow }

					-- CSS properties (margin, background, etc.) - BLUE
					hl.cssProp = { fg = c.blue }
					hl.cssDefinition = { fg = c.blue }
					hl["@property.css"] = { fg = c.blue }
					hl["@property"] = { fg = c.blue }

					-- CSS braces/brackets - RED
					hl.cssBraces = { fg = c.red }
					hl["@punctuation.bracket"] = { fg = c.red }
					hl["@punctuation.bracket.css"] = { fg = c.red }

					-- Cursor color - GRAY (no blink)
					hl.Cursor = { fg = c.bg, bg = c.fg, blend = 0 }
					hl.CursorNC = { fg = c.bg, bg = c.fg, blend = 50 }
					hl.lCursor = { link = "Cursor" }
					hl.CursorIM = { link = "Cursor" }
				end,
			}
		end,
	},
}
