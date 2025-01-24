-- MASON

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

-- LSP CONFIG

require("lspconfig").clangd.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").rust_analyzer.setup({})

-- COMPLETION

local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
	}, {
		{ name = "buffer" },
	}),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["clangd"].setup({
	capabilities = capabilities,
})

require("lspconfig")["luals"].setup({
	capabilities = capabilities,
})

require("lspconfig")["rust_analyzer"].setup({
	capabilities = capabilities,
})

-- TREE SITTER

local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "regex", "bash" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
