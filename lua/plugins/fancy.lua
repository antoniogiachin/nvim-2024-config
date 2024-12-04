return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		version = "*",
		opts = {
			options = {
				mode = "tabs",
			},
		},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "bufreadpre", "bufnewfile" },
		main = "ibl",
		opts = {
			indent = { char = "┊" },
		},
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
}
