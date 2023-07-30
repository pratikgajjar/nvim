local M = {
  "vim-test/vim-test",
}

function M.config()
  local map = vim.keymap.set
  local default_options = { silent = true }

  -- Shortcuts to run testcases

  map("n", "<leader>tn", ":TestNearest<CR>", default_options)
  map("n", "<leader>tc", ":TestClass<CR>", default_options)
  map("n", "<leader>tf", ":TestFile<CR>", default_options)
  map("n", "<leader>ts", ":TestSuite<CR>", default_options)
  map("n", "<leader>tl", ":TestLast<CR>", default_options)
  map("n", "<leader>tg", ":TestVisit<CR>", default_options)

  -- Set default tester runner pytest for python apps
  vim.g["test#python#runner"] = "pytest"

  -- vim.g["test#strategy"] =  "neovim"
end

return M
