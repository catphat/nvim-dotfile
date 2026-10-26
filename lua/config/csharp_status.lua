local M = {}
local states = {}
local frames = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }

-- Track each server separately, including the time before LspAttach fires.
function M.track(dispatchers, root)
	if not root then
		return
	end
	local state = { text = "Starting server", busy = true }
	states[root] = state
	local notification = dispatchers.notification
	dispatchers.notification = function(method, params)
		if method == "o#/backgrounddiagnosticstatus" and type(params) == "table" then
			if params.Status == 2 then
				state.text, state.busy = "Analysis complete", false
			elseif params.Status == 0 or params.Status == 1 then
				state.text, state.busy = "Analyzing solution", true
				local total, remaining = params.NumberFilesTotal, params.NumberFilesRemaining
				if params.Status == 1 and type(total) == "number" and total > 0 and type(remaining) == "number" then
					local percent = math.floor(100 * math.max(0, math.min(total, total - remaining)) / total)
					state.text = ("Analyzing %d%% (%d files)"):format(percent, total)
				end
			end
		end
		return notification(method, params)
	end
	local on_exit = dispatchers.on_exit
	dispatchers.on_exit = function(code, signal)
		state.text, state.busy = ("Stopped (exit %d)"):format(code), false
		if on_exit then
			return on_exit(code, signal)
		end
	end
end

function M.initialized(client)
	local state = states[client.config.root_dir]
	if state and state.text == "Starting server" then
		state.text, state.busy = "Connected", false
	end
end

function M.status()
	if vim.bo.filetype ~= "cs" then
		return ""
	end
	local file = vim.api.nvim_buf_get_name(0)
	local selected, longest = nil, 0
	for root, state in pairs(states) do
		if #root > longest and file:sub(1, #root + 1) == root .. "/" then
			selected, longest = state, #root
		end
	end
	if not selected then
		return "C# LSP: not attached"
	end
	local icon = selected.busy and frames[math.floor(vim.uv.hrtime() / 1e8) % #frames + 1] or "●"
	return icon .. " C#: " .. selected.text
end

return M
