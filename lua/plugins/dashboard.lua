return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				shortcut = {},
				header = {
"",
"▓█████▄ ▓█████ ██▒   █▓   ███▄ ▄███▓ ▒█████   ██▓  ██████  ▄▄▄      ",
"▒██▀ ██▌▓█   ▀▓██░   █▒▓  ██▒▀█▀ ██▒▒██▒  ██▒▓██▒▒██    ▒ ▒████▄    ",
"░██   █▌▒███   ▓██  █▒░▓  ██    ▓██░▒██░  ██▒▒██▒░ ▓██▄   ▒██  ▀█▄  ",
"░▓█▄   ▌▒▓█  ▄  ▒██ █░░▒  ██    ▒██ ▒██   ██░░██░  ▒   ██▒░██▄▄▄▄██ ",
"░▒████▓ ░▒████▒  ▒▀█░  ▒  ██▒   ░██▒░ ████▓▒░░██░▒██████▒▒ ▓█   ▓██▒",
" ▒▒▓  ▒ ░░ ▒░ ░  ░ ▐░  ░  ▒░   ░  ░░ ▒░▒░▒░ ░▓  ▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░",
" ░ ▒  ▒  ░ ░  ░  ░ ░░  ░   ░      ░  ░ ▒ ▒░  ▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░",
" ░ ░  ░    ░       ░░  ░      ░   ░ ░ ░ ▒   ▒ ░░  ░  ░    ░   ▒   ",
"   ░       ░  ░     ░         ░       ░ ░   ░        ░        ░  ░",
" ░                 ░                                              ",
"",
				},
				footer = {
					"",
					"",
					"Every Black man should do the thing twice as well.",
				},
			},
		})
	end,
}
