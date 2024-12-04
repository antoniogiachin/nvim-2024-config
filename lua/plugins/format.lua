return {
	-- AUTOFORMAT
	-- PRETTIER
	{
		"muniftanjim/prettier.nvim",
		dependencies = {
			{ "jose-elias-alvarez/null-ls.nvim" },
		},

		init = function()
			vim.keymap.set("n", "<leader>fp", "<cmd>prettier<cr>", { desc = "format with prettier" })
		end,
	},
}
