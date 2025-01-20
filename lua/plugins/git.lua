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
				-- current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 100,
					ignore_whitespace = false,
					virt_text_priority = 100,
				},
			})
			-- on_attach = function(bufnr)
			-- 	vim.keymap.set(
			-- 		"n",
			-- 		"<leader>tb",
			-- 		"<CMD>Gitsigns toggle_current_line_blame<CR>",
			-- 		{ desc = "[T]oggle [G]it Open" }
			-- 	)
			-- end
		end,
	},

	{
		"f-person/git-blame.nvim",
		-- load the plugin at startup
		event = "VeryLazy",
		-- Because of the keys part, you will be lazy loading this plugin.
		-- The plugin wil only load once one of the keys is used.
		-- If you want to load the plugin at startup, add something like event = "VeryLazy",
		-- or lazy = false. One of both options will work.
		opts = {
			-- your configuration comes here
			-- for example
			enabled = true, -- if you want to enable the plugin
			message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
			date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
			virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
		},
		config = function()
			vim.keymap.set("n", "<leader>tb", "<cmd>GitBlameToggle<cr>", { desc = "[t]oggle git blame" })
		end,
	},

	-- {
	-- 	"kdheepak/lazygit.nvim",
	-- 	config = function()
	-- 		vim.keymap.set("n", "<leader>tg", "<cmd>LazyGit<cr>", { desc = "[t]oggle lazygit open" })
	-- 	end,
	-- },

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
