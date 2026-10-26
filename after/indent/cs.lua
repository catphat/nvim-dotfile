-- Run after Neovim's C# indent script has defined GetCSIndent.
vim.bo.indentexpr = "v:lua.require'config.csharp_indent'.indent()"
