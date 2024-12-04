return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })

		-- add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [s]urround [a]dd [i]nner [w]ord [)]paren
		-- - sd'   - [s]urround [d]elete [']quotes
		-- - sr)'  - [s]urround [r]eplace [)] [']
		require("mini.surround").setup()
		require("mini.cursorword").setup()
	end,
}
