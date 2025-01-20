return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- 	local trouble = require("trouble")
			-- 	local symbols = trouble.statusline({
			-- 		mode = "lsp_document_symbols",
			-- 		groups = {},
			-- 		title = false,
			-- 		filter = { range = true },
			-- 		format = "{kind_icon}{symbol.name:Normal}",
			-- 		-- The following line is needed to fix the background color
			-- 		-- Set it to the lualine section you want to use
			-- 		hl_group = "lualine_c_normal",
			-- 	})
			-- 	table.insert(opts.sections.lualine_c, {
			-- 		symbols.get,
			-- 		cond = symbols.has,
			-- 	--[[ }) ]]
			--
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
		config = function()
			local status_ok, bufferline = pcall(require, "bufferline")
			if not status_ok then
				return
			end
			vim.opt.termguicolors = true
			vim.keymap.set("n", "<S-l>", "<CMD>BufferLineCycleNext<CR>")
			vim.keymap.set("n", "<S-h>", "<CMD>BufferLineCyclePrev<CR>")
			-- vim.keymap.set('n', ']b', '<CMD>BufferLineMoveNext<CR>')
			-- vim.keymap.set('n', '[b', '<CMD>BufferLineMovePrev<CR>')
			bufferline.setup({
				options = {
					show_close_icon = false,
					diagnostics = "nvim_lsp",
					max_prefix_length = 8,
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local s = " "
						for e, n in pairs(diagnostics_dict) do
							local sym = e == "error" and " " or (e == "warning" and " " or " ")
							s = s .. n .. sym
						end
						return s
					end,
					custom_filter = function(buf_number, buf_numbers)
						if vim.bo[buf_number].filetype ~= "oil" then
							return true
						end
					end,
				},
			})
		end,
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
		event = "VeryLazy",
		opts = {},
	},
}
