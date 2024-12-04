return {
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({

				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
				},
				current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 100,
					ignore_whitespace = false,
					virt_text_priority = 100,
				},
			})
			on_attach = function(bufnr)
				vim.keymap.set(
					"n",
					"<leader>tb",
					"<CMD>Gitsigns toggle_current_line_blame<CR>",
					{ desc = "[T]oggle [G]it Open" }
				)
			end
		end,
	},

	{
		"kdheepak/lazygit.nvim",
		config = function()
			vim.keymap.set("n", "<leader>tg", "<cmd>LazyGit<cr>", { desc = "[t]oggle lazygit open" })
		end,
	},

	{
		"sindrets/diffview.nvim",
		opts = {
			use_icons = false,
		},
		config = function()
			vim.keymap.set("n", "<leader>td", "<cmd>diffviewopen<cr>", { desc = "[t]oggle [g]it open" })
			vim.keymap.set("n", "<leader>tx", "<cmd>diffviewclose<cr>", { desc = "[t]oggle [g]it close" })
		end,
	},
}
