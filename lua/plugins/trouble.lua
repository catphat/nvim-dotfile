return {
	{
		"folke/trouble.nvim",
		opts = { focus = true },
		keys = {
			{ "<leader>xx", false },
			{ "<leader>xX", false },
			{ "<leader>cs", false },
			{ "<leader>cS", false },
			{ "<leader>xL", false },
			{ "<leader>xQ", false },
			{ "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", desc = "Workspace diagnostics" },
			{ "<leader>tb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer diagnostics" },
			{ "<leader>ts", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols" },
			{ "<leader>tl", "<cmd>Trouble lsp toggle<cr>", desc = "LSP references / definitions" },
			{ "<leader>tq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix list" },
			{ "<leader>tL", "<cmd>Trouble loclist toggle<cr>", desc = "Location list" },
		},
	},
	{
		"folke/todo-comments.nvim",
		keys = {
			{ "<leader>xt", false },
			{ "<leader>xT", false },
			{ "<leader>tt", "<cmd>Trouble todo toggle<cr>", desc = "TODOs" },
			{
				"<leader>tT",
				"<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>",
				desc = "TODO / FIX / FIXME",
			},
		},
	},
	{
		"folke/which-key.nvim",
		opts = { spec = { { "<leader>t", group = "trouble" } } },
	},
}
