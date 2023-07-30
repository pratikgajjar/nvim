return {
  -- LSP keymaps
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      -- LSP Server Settings
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
              },
            },
          },
        },
      },
    },
  },
}
