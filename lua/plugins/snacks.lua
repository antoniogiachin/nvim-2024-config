return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		terminal = {
			enabled = true,
			bo = {
				filetype = "snacks_terminal",
			},
			wo = {},
			keys = {
				q = "hide",
				-- gf = function(self)
				-- 	local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
				-- 	if f == "" then
				-- 		Snacks.notify.warn("No file under cursor")
				-- 	else
				-- 		self:hide()
				-- 		vim.schedule(function()
				-- 			vim.cmd("e " .. f)
				-- 		end)
				-- 	end
				-- end,
				-- term_normal = {
				-- 	"<esc>",
				-- 	function(self)
				-- 		self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
				-- 		if self.esc_timer:is_active() then
				-- 			self.esc_timer:stop()
				-- 			vim.cmd("stopinsert")
				-- 		else
				-- 			self.esc_timer:start(200, 0, function() end)
				-- 			return "<esc>"
				-- 		end
				-- 	end,
				-- 	mode = "t",
				-- 	expr = true,
				-- 	desc = "Double escape to normal mode",
				-- },
			},
		},
		-- dashboard = { enabled = true },
		indent = { enabled = true },
		git = { enabled = true },
		-- input = { enabled = true },
		bufdelete = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		quickfile = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		-- {
		-- 	"<leader>z",
		-- 	function()
		-- 		Snacks.zen()
		-- 	end,
		-- 	desc = "Toggle Zen Mode",
		-- },
		-- {
		-- 	"<leader>Z",
		-- 	function()
		-- 		Snacks.zen.zoom()
		-- 	end,
		-- 	desc = "Toggle Zoom",
		-- },
		-- {
		-- 	"<leader>.",
		-- 	function()
		-- 		Snacks.scratch()
		-- 	end,
		-- 	desc = "Toggle Scratch Buffer",
		-- },
		-- {
		-- 	"<leader>S",
		-- 	function()
		-- 		Snacks.scratch.select()
		-- 	end,
		-- 	desc = "Select Scratch Buffer",
		-- },
		-- {
		-- 	"<leader>n",
		-- 	function()
		-- 		Snacks.notifier.show_history()
		-- 	end,
		-- 	desc = "Notification History",
		-- },
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		-- {
		-- 	"<leader>cR",
		-- 	function()
		-- 		Snacks.rename.rename_file()
		-- 	end,
		-- 	desc = "Rename File",
		-- },
		-- {
		-- 	"<leader>gB",
		-- 	function()
		-- 		Snacks.gitbrowse()
		-- 	end,
		-- 	desc = "Git Browse",
		-- 	mode = { "n", "v" },
		-- },
		{
			"<leader>gb",
			function()
				Snacks.git.blame_line()
			end,
			desc = "Git Blame Line",
		},
		{
			"<leader>tG",
			function()
				Snacks.lazygit.log_file()
			end,
			desc = "Lazygit Current File History",
		},
		{
			"<leader>tg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},
		{
			"<c-/>",
			function()
				Snacks.terminal()
			end,
			desc = "Toggle Terminal",
		},
		{
			"<c-_>",
			function()
				Snacks.terminal()
			end,
			desc = "which_key_ignore",
		},
		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
			mode = { "n", "t" },
		},
		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
			mode = { "n", "t" },
		},
	},
}
