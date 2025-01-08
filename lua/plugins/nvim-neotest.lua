return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"haydenmeade/neotest-jest",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-jest")({ -- Adicionar suporte ao Jest
					jestCommand = "npm test --",
					jestConfigFile = "jest.config.js",
					env = { CI = true },
					cwd = function()
						return vim.fn.getcwd()
					end,
				}),
			},
		})
	end,
}
