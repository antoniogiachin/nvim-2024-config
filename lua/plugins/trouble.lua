return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics<cr>",
			desc = "diagnostics (trouble)",
		},
		-- {
		--   '<leader>xx',
		--   '<cmd>trouble diagnostics toggle filter.buf=0<cr>',
		--   desc = 'buffer diagnostics (trouble)',
		-- },
		-- {
		--   '<leader>cs',
		--   '<cmd>trouble symbols toggle focus=false<cr>',
		--   desc = 'symbols (trouble)',
		-- },
		-- {
		--   '<leader>cl',
		--   '<cmd>trouble lsp toggle focus=false win.position=right<cr>',
		--   desc = 'lsp definitions / references / ... (trouble)',
		-- },
		-- {
		--   '<leader>xl',
		--   '<cmd>trouble loclist toggle<cr>',
		--   desc = 'location list (trouble)',
		-- },
		-- {
		--   '<leader>xq',
		--   '<cmd>trouble qflist toggle<cr>',
		--   desc = 'quickfix list (trouble)',
		-- },
	},
}
