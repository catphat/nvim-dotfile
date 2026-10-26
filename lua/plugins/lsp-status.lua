return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.sections.lualine_z = {}
			opts.options.refresh = opts.options.refresh or {}
			opts.options.refresh.statusline = 200
			table.insert(opts.sections.lualine_x, 1, {
				function()
					return require("config.csharp_status").status()
				end,
				color = { fg = "#9CDCFE", gui = "bold" },
			})
			table.insert(opts.sections.lualine_x, 2, {
				"lsp_status",
				ignore_lsp = { "omnisharp" },
			})
		end,
	},
}
