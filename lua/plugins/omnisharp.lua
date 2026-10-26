return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			-- Preserve nvim-lspconfig's command and flags.
			local command = vim.deepcopy(vim.lsp.config.omnisharp.cmd)
			-- OmniSharp reads EditorConfig support at startup, before LSP settings arrive.
			table.insert(command, "FormattingOptions:EnableEditorConfigSupport=true")
			local status = require("config.csharp_status")
			local on_init = opts.servers.omnisharp.on_init
			opts.servers.omnisharp.on_init = function(client, result)
				status.initialized(client)
				if on_init then
					return on_init(client, result)
				end
			end
			opts.servers.omnisharp.cmd = function(dispatchers, config)
				status.track(dispatchers, config.root_dir)
				local on_error = dispatchers.on_error
				dispatchers.on_error = function(code, payload)
					-- OmniSharp sometimes emits a bare JSON null during project loading.
					-- Filter only that upstream bug; forward every other protocol error.
					-- https://github.com/OmniSharp/omnisharp-roslyn/issues/2574
					if code == vim.lsp.rpc.client_errors.INVALID_SERVER_MESSAGE and payload == nil then
						return
					end
					if on_error then
						return on_error(code, payload)
					end
				end
				return vim.lsp.rpc.start(command, dispatchers, {
					cwd = config.root_dir,
					env = config.cmd_env,
					detached = config.detached,
				})
			end
		end,
	},
}
