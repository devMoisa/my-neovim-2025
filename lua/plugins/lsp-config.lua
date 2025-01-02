return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "tailwindcss", "html" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.ts_ls.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.html.setup({})

			-- Display hover information
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			-- Jump to definition
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			-- Jump to declaration
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			-- Jump to implementation
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			-- Jump to type definition
			vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
			-- List references
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			-- Rename symbol
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			-- Code action
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
			-- Format buffer
			vim.keymap.set("n", "<leader>fm", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end,
	},
}
