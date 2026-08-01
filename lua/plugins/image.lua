return {
  "3rd/image.nvim",
  build = false, -- Skip building luarocks
  opts = {
    backend = "kitty", -- Use Kitty protocol
    -- processor = "magick_cli",
  },
  config = function(_, opts)
    require("image").setup(opts)
  end,
}
