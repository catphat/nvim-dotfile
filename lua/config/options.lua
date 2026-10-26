vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_ts_lsp = "vtsls"
-- Keep Godot's project root inside monorepos, including when editing scenes.
vim.g.root_spec = { { "project.godot" }, "lsp", { ".git", "lua" }, "cwd" }
vim.opt.background = "dark"
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
-- Noice displays commands in a popup; do not reserve a blank bottom row.
vim.opt.cmdheight = 0
