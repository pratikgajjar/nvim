local M = {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  requires = { { "nvim-lua/plenary.nvim" } },
  ft = { "rust", "toml" },
}

function M.config()
  local crates = require("crates")
  crates.setup({
    -- null_ls = {
    --   enabled = true,
    --   name = "crates.nvim",
    -- },
  })
  crates.show()
end

return M
