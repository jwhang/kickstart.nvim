return {
	-- Neotree for directory navigation
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", { desc = "Toggle Neo [T]ree" })
		vim.keymap.set("n", "<leader>g", ":Neotree float git_status<CR>", { desc = "Show [G]it Status" })
	end,
}
