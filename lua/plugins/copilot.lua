return {
	{
		"github/copilot.vim",
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		-- config = function()
		-- 	require("copilotchat").setup()
		-- 	vim.keymap.set("n", "<leader>tc", "<cmd>copilotchattoggle<cr>", { desc = "[t]oggle [c]opilot chat" })
		-- end,
		-- See Commands section for default commands if you want to lazy load on them
		--
		--
		config = function()
			local utils = require("config.utils")
			local icons = require("config.icons")
			utils.desc("<leader>a", "AI")

			-- Copilot autosuggestions
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_hide_during_completion = 0
			vim.g.copilot_proxy_strict_ssl = 0
			vim.keymap.set("i", "<S-Tab>", 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

			-- Copilot chat
			local chat = require("CopilotChat")
			local actions = require("CopilotChat.actions")
			local select = require("CopilotChat.select")

			chat.setup({
				log_level = "info",
				model = "claude-3.5-sonnet",
				question_header = " " .. icons.ui.User .. " ",
				answer_header = " " .. icons.ui.Bot .. " ",
				error_header = "> " .. icons.diagnostics.Warn .. " ",
				selection = select.visual,
				mappings = {
					reset = {
						normal = "",
						insert = "",
					},
				},
				prompts = {
					Yarrr = {
						system_prompt = "You are fascinated by pirates, so please respond in pirate speak.",
					},
					Explain = {
						mapping = "<leader>ae",
						description = "AI Explain",
					},
					Review = {
						mapping = "<leader>ar",
						description = "AI Review",
					},
					Tests = {
						mapping = "<leader>at",
						description = "AI Tests",
					},
					Fix = {
						mapping = "<leader>af",
						description = "AI Fix",
					},
					Optimize = {
						mapping = "<leader>ao",
						description = "AI Optimize",
					},
					Docs = {
						mapping = "<leader>ad",
						description = "AI Documentation",
					},
					Commit = {
						mapping = "<leader>ac",
						description = "AI Generate Commit",
					},
				},
			})

			utils.au("BufEnter", {
				pattern = "copilot-*",
				callback = function()
					vim.opt_local.relativenumber = false
					vim.opt_local.number = false
				end,
			})

			vim.keymap.set({ "n" }, "<leader>aa", chat.toggle, { desc = "AI Toggle" })
			vim.keymap.set({ "v" }, "<leader>aa", chat.open, { desc = "AI Open" })
			vim.keymap.set({ "n" }, "<leader>ax", chat.reset, { desc = "AI Reset" })
			vim.keymap.set({ "n" }, "<leader>as", chat.stop, { desc = "AI Stop" })
			vim.keymap.set({ "n" }, "<leader>am", chat.select_model, { desc = "AI Model" })
			vim.keymap.set({ "n", "v" }, "<leader>aq", function()
				vim.ui.input({
					prompt = "AI Question> ",
				}, function(input)
					if input and input ~= "" then
						chat.ask(input)
					end
				end)
			end, { desc = "AI Question" })
		end,
	},
}
