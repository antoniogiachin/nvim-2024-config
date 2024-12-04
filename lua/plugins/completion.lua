return {
	{
		"hrsh7th/nvim-cmp",
		version = false,
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"onsails/lspkind.nvim",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local opts = {
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "buffer" },
				}),
				mapping = cmp.mapping.preset.insert({
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-n>"] = cmp.mapping(function(original)
						print("tab pressed")
						if cmp.visible() then
							print("cmp expand")
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							print("snippet expand")
							luasnip.expand_or_jump()
						else
							print("fallback")
							original()
						end
					end, { "i", "s" }),
					["<C-p>"] = cmp.mapping(function(original)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.jump(-1)
						else
							original()
						end
					end, { "i", "s" }),
				}),
			}
			cmp.setup(opts)
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		build = (function()
			-- Build Step is needed for regex support in snippets.
			-- This step is not supported in many windows environments.
			-- Remove the below condition to re-enable on windows.
			if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
				return
			end
			return "make install_jsregexp"
		end)(),
		dependencies = {
			-- `friendly-snippets` contains a variety of premade snippets.
			--    See the README about individual language/framework/plugin snippets:
			--    https://github.com/rafamadriz/friendly-snippets
			{
				"rafamadriz/friendly-snippets",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},
		},
	},
	{ "hrsh7th/cmp-nvim-lsp", lazy = true },
	{ "hrsh7th/cmp-path", lazy = true },
	{ "onsails/lspkind.nvim", lazy = true },
	{ "hrsh7th/cmp-buffer", lazy = true },
}
