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
		})
		vim.keymap.set("n", "<leader>f0", vim.lsp.buf.format, {})
	end,
}
