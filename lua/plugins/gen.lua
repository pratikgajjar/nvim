local M = {
  "David-Kunz/gen.nvim",
}

function M.config()
  local map = vim.keymap.set
  local default_options = { silent = true }

  -- Shortcuts to run testcases

  map("n", "<leader>cg", ":Gen<CR>", default_options)
  map("v", "<leader>cg", ":Gen<CR>", default_options)
end

return M
