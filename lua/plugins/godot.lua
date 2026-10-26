return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				gdscript = {
					-- The language server is hosted by the running Godot editor.
					mason = false,
					cmd = vim.lsp.rpc.connect("127.0.0.1", tonumber(vim.env.GDScript_Port) or 6005),
					root_markers = { "project.godot" },
					workspace_required = true,
				},
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		init = function()
			vim.filetype.add({
				extension = { gdshaderinc = "gdshader" },
				filename = { ["project.godot"] = "gdresource" },
			})
			vim.treesitter.language.register("godot_resource", "gdresource")
		end,
		opts = { ensure_installed = { "gdscript", "godot_resource", "gdshader" } },
	},
	{
		"mason-org/mason.nvim",
		opts = { ensure_installed = { "gdtoolkit" } },
	},
	{
		"stevearc/conform.nvim",
		opts = { formatters_by_ft = { gdscript = { "gdformat" } } },
	},
	{
		"mfussenegger/nvim-lint",
		opts = { linters_by_ft = { gdscript = { "gdlint" } } },
	},
	{
		"mfussenegger/nvim-dap",
		opts = function()
			local dap = require("dap")
			dap.adapters.godot = {
				type = "server",
				host = "127.0.0.1",
				port = tonumber(vim.env.GODOT_DAP_PORT) or 6006,
			}
			-- Resolve after Mason has added its bin directory to PATH.
			dap.adapters.netcoredbg = function(callback)
				callback({
					type = "executable",
					command = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg",
					args = { "--interpreter=vscode" },
					options = { detached = false },
				})
			end
			local function project()
				return assert(require("config.godot").root(), "Open a file inside a Godot project first")
			end
			dap.configurations.gdscript = {
				{
					type = "godot",
					request = "launch",
					name = "Godot: run project (GDScript)",
					project = project,
					scene = "main",
				},
				{
					type = "godot",
					request = "attach",
					name = "Godot: attach to running game (GDScript)",
					project = project,
				},
			}
			-- C# needs a managed debugger; Godot's built-in DAP handles GDScript.
			dap.configurations.cs = dap.configurations.cs or {}
			table.insert(dap.configurations.cs, {
				type = "netcoredbg",
				request = "attach",
				name = "Godot C#: attach to game process",
				processId = function()
					return require("dap.utils").pick_process({
						filter = function(process)
							return process.name:lower():find("godot", 1, true) ~= nil
						end,
					})
				end,
			})
		end,
	},
	{
		"folke/which-key.nvim",
		opts = { spec = { { "<leader>G", group = "Godot" } } },
	},
}
