return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "typescript", "go", "html", "json", "css", "tsx"},
  highlight = {enable = true},
  indent = { enable = true},
})


  end
}
