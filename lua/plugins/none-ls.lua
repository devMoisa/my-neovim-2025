return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
			},
			-- Add `on_attach` to handle format on save
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr, -- Attach only to the current buffer
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
		-- Keep your manual formatting keymap
		vim.keymap.set("n", "<leader>f0", vim.lsp.buf.format, {})
	end,
}
