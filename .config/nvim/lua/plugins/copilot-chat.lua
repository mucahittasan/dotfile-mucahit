return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"zbirenbaum/copilot.lua", -- existing Copilot client for suggestions
		},
		opts = {
			debug = false,
			window = {
				layout = "vertical", -- vertical split feels more natural with code
				width = 0.35,
			},
			mappings = {
				complete = {
					insert = "<C-Space>",
				},
				close = {
					normal = "q",
					insert = "<C-c>",
				},
				submit_prompt = {
					normal = "<CR>",
					insert = "<C-CR>",
				},
			},
		},
		cmd = {
			"CopilotChat",
			"CopilotChatToggle",
			"CopilotChatExplain",
			"CopilotChatFix",
			"CopilotChatReview",
			"CopilotChatOptimize",
			"CopilotChatTests",
			"CopilotChatCommit",
			"CopilotChatRefactor",
		},
		keys = {
			-- Chat main toggle
			{
				"<leader>ac",
				function()
					vim.cmd("CopilotChatToggle")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat (toggle)",
			},

			-- Ask about current buffer / selection
			{
				"<leader>aa",
				function()
					vim.cmd("CopilotChat")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Ask (buffer / selection)",
			},

			-- Agent-like actions that apply edits
			{
				"<leader>ae",
				function()
					vim.cmd("CopilotChatExplain")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Explain code",
			},
			{
				"<leader>af",
				function()
					vim.cmd("CopilotChatFix")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Fix / refactor selection",
			},
			{
				"<leader>ar",
				function()
					vim.cmd("CopilotChatReview")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Review buffer / selection",
			},
			{
				"<leader>ao",
				function()
					vim.cmd("CopilotChatOptimize")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Optimize code",
			},
			{
				"<leader>at",
				function()
					vim.cmd("CopilotChatTests")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Generate tests",
			},
			{
				"<leader>aC",
				function()
					vim.cmd("CopilotChatCommit")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Suggest commit message",
			},
			{
				"<leader>aR",
				function()
					vim.cmd("CopilotChatRefactor")
				end,
				mode = { "n", "v" },
				desc = "Copilot Chat: Refactor (agent-style edits)",
			},
		},
	},
}


