return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",            -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      -- configurações gerais
      filesystem = {
        follow_current_file = true,
        window = {
          mappings = {
            ["v"] = "open_vsplit", -- <--- Mapeamento para abrir em split vertical
            ["l"] = "open",  -- Abrir nó com 'l'
            ["h"] = "close_node", -- Fechar nó com 'h' (uma prática comum)
            ["<CR>"] = "open", -- Também abrir com Enter (opcional)
            ["j"] = "next",  -- Mover para baixo
            ["k"] = "prev",  -- Mover para cima
          },
        },
      },
    })
  end,
}
