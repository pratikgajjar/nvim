local M = {
	"ThePrimeagen/harpoon",
}

function M.config()
	local map = vim.keymap.set
	local mark = require("harpoon.mark")
	local ui = require("harpoon.ui")

	map("n", "<leader>a", mark.add_file)
	map("n", "<M-e>", ui.toggle_quick_menu)

	map("n", "<M-h>", function()
		ui.nav_file(1)
	end)
	map("n", "<M-j>", function()
		ui.nav_file(2)
	end)
	map("n", "<M-k>", function()
		ui.nav_file(3)
	end)
	map("n", "<M-l>", function()
		ui.nav_file(4)
	end)
	map("n", "<M-Tab>", function()
		ui.nav_next()
	end)
end

return M
