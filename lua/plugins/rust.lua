local M = {
  "rust-lang/rust.vim",
  ft = "rust",
  init = function()
    vim.g.rustfmt_autosave = 1
  end,
}

function M.config() end

return M
