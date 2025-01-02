return {
  "github/copilot.vim",
  event = "InsertEnter", -- (opcional) carrega só ao entrar no modo Insert
  config = function()
    -- Desativa o mapeamento padrão de <Tab> do Copilot
    vim.g.copilot_no_tab_map = true

    -- Mapeia <C-l> para aceitar a sugestão do Copilot
    vim.api.nvim_set_keymap(
      "i",
      "<C-l>",
      'copilot#Accept("<CR>")',
      { expr = true, silent = true, noremap = true, replace_keycodes = false }
    )
  end,
}

