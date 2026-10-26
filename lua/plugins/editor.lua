return {
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "dark",
			italic_comments = true,
			group_overrides = {
				IlluminatedWordText = { underline = true },
				IlluminatedWordRead = { underline = true },
				IlluminatedWordWrite = { underline = true },
				NormalFloat = { fg = "#D4D4D4", bg = "#353535" },
				-- Keep the popup fill inside the outline, not across border cells.
				FloatBorder = { fg = "#569CD6", bg = "#1F1F1F" },
				FloatTitle = { fg = "#9CDCFE", bg = "#1F1F1F", bold = true },
				TroubleNormal = { fg = "#D4D4D4", bg = "#353535" },
				TroubleNormalNC = { fg = "#D4D4D4", bg = "#353535" },
			},
		},
	},
	{ "LazyVim/LazyVim", opts = { colorscheme = "vscode" } },
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = { view_options = { show_hidden = true } },
		keys = {
			{ "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
			{ "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer" },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					-- Numeric 1 means one cell in Telescope, not 100 percent.
					width = { padding = 0 },
					height = { padding = 0 },
					horizontal = { preview_width = 0.65, preview_cutoff = 0 },
				},
			},
		},
		keys = {
			{
				"<leader>fs",
				function()
					require("telescope.builtin").lsp_document_symbols()
				end,
				desc = "Find symbols in current file",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Live grep (cwd)",
			},
			{
				"<leader>fh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Help tags",
			},
		},
	},
}
