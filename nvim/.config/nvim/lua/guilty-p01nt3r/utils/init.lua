local M = {}

local dataPath = vim.fn.stdpath("data");

M.MASON_BIN_PATH = dataPath .. "/mason/bin/"
M.MASON_PACKAGE_PATH = dataPath .. "/mason/packages/"

function M.get_mason_executable(package_name)

  local mason_path = M.MASON_BIN_PATH .. package_name

  -- Optional: check if it exists
  if vim.fn.filereadable(mason_path) == 1 then
    return mason_path
  else
    vim.notify("Executable not found: " .. mason_path, vim.log.levels.ERROR)
    return nil
  end
end

function M.copy_file_range()
  local start_line = vim.fn.line('v')
  local end_line = vim.fn.line('.')
  local first_line = math.min(start_line, end_line)
  local last_line = math.max(start_line, end_line)

  local rel_path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':~:.')
  local formatted = string.format('%s L%d-%d', rel_path, first_line, last_line)

  vim.fn.setreg('+', formatted)
end

return M
