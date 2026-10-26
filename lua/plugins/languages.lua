return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
				float = {
					border = "none",
					source = "always",
				},
			},
			servers = {
				html = {},
				cssls = {},
				-- The dotnet extra includes F#; this setup only needs C#.
				fsautocomplete = { enabled = false },
			},
		},
	},
	{
		"mason-org/mason.nvim",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_filter(function(name)
				return name ~= "fantomas" and name ~= "csharpier"
			end, opts.ensure_installed or {})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = function(_, opts)
			opts.formatters_by_ft.cs = { lsp_format = "fallback" }
			opts.formatters_by_ft.fsharp = nil
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = vim.tbl_filter(function(lang)
				return lang ~= "fsharp"
			end, opts.ensure_installed or {})
			vim.list_extend(opts.ensure_installed, { "css", "scss" })
		end,
	},
}
