-- GetCSIndent recognizes only single-line attributes. Use the existing C#
-- syntax tree to find the opening line of a completed multiline attribute.
local M = {}

function M.indent()
  local previous = vim.fn.prevnonblank(vim.v.lnum - 1)
  if previous > 0 then
    local text = vim.fn.getline(previous)
    local last = text:find('%]%s*$')
    if last then
      local ok, node = pcall(function()
        vim.treesitter.get_parser(0, 'c_sharp'):parse()
        return vim.treesitter.get_node({ bufnr = 0, pos = { previous - 1, last - 1 } })
      end)
      if ok then
        while node do
          if node:type() == 'attribute_list' then
            local start_row, _, end_row = node:range()
            if end_row == previous - 1 then
              return vim.fn.indent(start_row + 1)
            end
          end
          node = node:parent()
        end
      end
    end
  end
  return vim.fn.GetCSIndent(vim.v.lnum)
end

return M
