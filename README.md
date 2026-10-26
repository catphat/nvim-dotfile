# Neovim config

LazyVim with a VS Code dark theme, C#/Godot tooling, and TypeScript/web support.
`lazy-lock.json` pins plugin versions; `lua/plugins/` contains additions and overrides.

## Configuration

- `lua/config/lazy.lua`: bootstrap, plugin imports, extras for C#, TypeScript,
  JSON, debugging, Telescope, Prettier, and ESLint.
- `lua/config/options.lua`: Space leader, relative numbers, system clipboard,
  no wrapping/swap files, Godot-aware project roots.
- `lua/config/keymaps.lua`: custom shortcuts; `autocmds.lua`: C# spaces/GDScript tabs.
- `lua/plugins/lsp-status.lua`: status line; `config/csharp_status.lua`: C# progress.
- `lua/plugins/omnisharp.lua`: C# EditorConfig support; `config/csharp_indent.lua`:
  multiline attribute indentation.
- `lua/plugins/godot.lua` + `config/godot.lua`: language server, debugging,
  project/build commands. Details: [Godot guide](doc/godot-dev.txt).
- `lua/plugins/local.lua`: optional private overrides, ignored by Git.

## Plugins

Includes LazyVim defaults, enabled extras, and their dependencies.

| Plugin(s) | Role |
| --- | --- |
| LazyVim / lazy.nvim | Base configuration / plugin manager |
| vscode.nvim | Active theme; mode indicator colors |
| catppuccin / tokyonight.nvim | Additional bundled themes |
| lualine.nvim / bufferline.nvim | Status line / buffer tabs |
| noice.nvim / dressing.nvim | Command/message UI / input and selection dialogs |
| snacks.nvim | Dashboard, terminal, notifications, Git history, utilities |
| which-key.nvim | Shortcut hints |
| oil.nvim | Edit directories as buffers |
| telescope.nvim / telescope-fzf-native.nvim | Fuzzy search / native search accelerator |
| blink.cmp / friendly-snippets | Completion / snippet collection |
| nvim-lspconfig / omnisharp-extended-lsp.nvim | Language servers / enhanced C# navigation |
| lazydev.nvim / SchemaStore.nvim | Neovim Lua completion / JSON schemas |
| mason.nvim / mason-lspconfig.nvim / mason-nvim-dap.nvim | Tool installation and LSP/debugger integration |
| conform.nvim / nvim-lint | Formatting / linting, including gdformat and gdlint |
| nvim-treesitter / nvim-treesitter-textobjects | Syntax parsing/highlighting / syntax-aware selections |
| nvim-ts-autotag / ts-comments.nvim | HTML/JSX tag handling / language-aware comments |
| nvim-dap / nvim-dap-ui / nvim-dap-virtual-text | Debugging / debugger panels / inline values |
| trouble.nvim / todo-comments.nvim | Diagnostics/navigation lists / TODO highlighting and search |
| gitsigns.nvim | Git changes, hunks, optional inline blame |
| grug-far.nvim | Search and replace |
| flash.nvim / vim-illuminate | Fast jumps / reference highlighting |
| mini.ai / mini.pairs | Text objects / bracket and quote pairing |
| persistence.nvim | Session restoration |
| mini.icons / nvim-web-devicons | Icons |
| plenary.nvim / nui.nvim / nvim-nio | Shared Lua utilities / UI components / async support |

## Restore

Clone into `~/.config/nvim`, open Neovim, and run `:Lazy restore`.
Use `:checkhealth` for system requirements and `:Mason` for language tools.
Godot, .NET, other language runtimes, and private overrides need separate setup;
tool versions are not pinned by the plugin lockfile. Installed plugins, tools,
history, sessions, and caches live outside this repo.
