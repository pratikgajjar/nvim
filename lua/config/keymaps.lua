-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Move selected text with indenting
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Better join
map("n", "J", "mzJ`z")

-- Center view when scroll down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Yank to system clipboard
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank sys clip" })
map("n", "<leader>Y", [["+Y]], { desc = "yank line sys clip" })

-- Delete without register update
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete without yank" })

-- better indenting
map("v", "<", "<gv", { desc = "indent line" })
map("v", ">", ">gv", { desc = "indent line" })

-- paste over currently selected text without yanking it
map("v", "p", '"_dp', { desc = "paste without yank" })
map("v", "P", '"_dP', { desc = "paste without yank" })

map("x", "<leader>p", [["_dP]], { desc = "paste text select mode" })
map("n", "<leader>p", [["+p]], { desc = "paste from sys clip" })

-- switch buffer
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })

-- Cancel search highlighting with ESC
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear hlsearch and ESC" })
