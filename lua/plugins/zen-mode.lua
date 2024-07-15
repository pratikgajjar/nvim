return {
  "folke/zen-mode.nvim",
  opts = {
    plugins = {
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        laststatus = 1, -- turn off the statusline in zen mode
      },
      tmux = { enabled = true }, -- disables the tmux statusline
      wezterm = {
        enabled = true,
        font = "+1", -- (10% increase per step)
      },
    },
  },
}
