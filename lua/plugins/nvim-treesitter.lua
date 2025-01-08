return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "go",
          "html",
          "json",
          "css",
          "tsx",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        matchup = { enable = true },
      })
    end,
  },
  {
    "andymass/vim-matchup",
    lazy = true, -- Carrega automaticamente quando Treesitter estiver configurado
    event = "BufReadPost",
  },
}
