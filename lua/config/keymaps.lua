vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without replacing clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
vim.keymap.set("n", "<C-Left>", "<C-o>", { desc = "Jump back" })
vim.keymap.set("n", "<C-Right>", "<C-i>", { desc = "Jump forward" })

vim.keymap.set("n", "<leader>gb", function()
    return Snacks.picker.git_log_line({ layout = { fullscreen = true } })
end, { desc = "Git Blame Line (Fullscreen)" })

for key, action in pairs({ e = "editor", r = "project", s = "scene", b = "build" }) do
    vim.keymap.set("n", "<leader>G" .. key, function()
        require("config.godot").run(action)
    end, { desc = "Godot: " .. action })
end
vim.keymap.set("n", "<leader>Gl", function()
    require("config.godot").connect()
end, { desc = "Godot: connect GDScript LSP" })
