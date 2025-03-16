local M = {
  "saecki/crates.nvim",
  tag = "stable",
  event = { "BufRead Cargo.toml" },
  requires = { { "nvim-lua/plenary.nvim" } },
  ft = { "rust", "toml" },
}

return M
