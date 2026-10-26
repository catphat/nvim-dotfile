local M = {}

function M.root()
	local file = vim.api.nvim_buf_get_name(0)
	return (file ~= "" and vim.fs.root(file, "project.godot")) or vim.fs.root(vim.uv.cwd(), "project.godot")
end

function M.executable()
	local override = vim.g.godot_bin or vim.env.GODOT_BIN
	if override and override ~= "" then
		return vim.fn.executable(override) == 1 and override or nil
	end
	for _, executable in ipairs({
		"godot-mono",
		"godot4-mono",
		"godot",
		"godot4",
		vim.env.HOME .. "/dev/repos/godot/bin/godot.linuxbsd.editor.x86_64",
	}) do
		if vim.fn.executable(executable) == 1 then
			return executable
		end
	end
end

function M.run(action)
	local root = M.root()
	if not root then
		vim.notify("No project.godot found for this buffer or working directory", vim.log.levels.WARN)
		return
	end
	if action == "build" then
		if vim.fn.executable("dotnet") ~= 1 then
			vim.notify("Install the .NET SDK to build Godot C# projects", vim.log.levels.ERROR)
			return
		end
		local projects = vim.fn.globpath(root, "*.csproj", false, true)
		if #projects ~= 1 then
			vim.notify(
				"Expected one .csproj in " .. root .. "; generate it in Godot's .NET editor first",
				vim.log.levels.WARN
			)
			return
		end
		vim.cmd("wall")
		Snacks.terminal.open({ "dotnet", "build", projects[1] }, { cwd = root, auto_close = false })
		return
	end
	local executable = M.executable()
	if not executable then
		vim.notify("Godot executable not found; set GODOT_BIN or vim.g.godot_bin", vim.log.levels.ERROR)
		return
	end
	local command = { executable, "--path", root }
	if action == "editor" then
		vim.list_extend(command, { "--editor" })
	elseif action == "scene" then
		local scene = vim.api.nvim_buf_get_name(0)
		if not scene:match("%.tscn$") then
			vim.notify("Open a .tscn file to run the current scene", vim.log.levels.WARN)
			return
		end
		table.insert(command, scene)
	end
	vim.cmd("wall")
	Snacks.terminal.open(command, { cwd = root, auto_close = false })
end

function M.connect()
	if vim.bo.filetype ~= "gdscript" or not M.root() then
		vim.notify("Open a GDScript file inside a Godot project first", vim.log.levels.WARN)
		return
	end
	-- Neovim 0.11 retains clients after refused TCP connections. Include these
	-- uninitialized clients: both LspStart and LspRestart otherwise miss them.
	vim.lsp.enable("gdscript", false)
	for _, client in ipairs(vim.lsp.get_clients({ name = "gdscript", _uninitialized = true })) do
		client:stop(true)
	end
	vim.lsp.enable("gdscript")
end

return M
