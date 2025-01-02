-- Defina o <leader> como espaço, caso não tenha feito ainda
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Importa a biblioteca do Telescope
local builtin = require("telescope.builtin")

--------------------------------------------------------------------------------
-- Keymaps gerais
--------------------------------------------------------------------------------
-- Telescope
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope: find files" })
vim.keymap.set("n", "<leader>ft", builtin.live_grep, { desc = "Telescope: live grep" })

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree reveal filesystem left toggle<CR>", { desc = "Abrir/fechar Neo-tree" })

-- Navegação entre splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Split left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Split right" })

--------------------------------------------------------------------------------
-- Keymaps para LSP
--------------------------------------------------------------------------------
-- Geralmente, configuramos isso dentro de 'on_attach' para que cada buffer
-- receba suas próprias configurações de LSP.
local on_attach = function(client, bufnr)
  -- Facilita atribuir "buffer" e "silent" para todos os maps
  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

-- Se você tiver um setup de LSP, por exemplo:
-- require('lspconfig').lua_ls.setup({
--   on_attach = on_attach,
--   settings = { ... },
-- })

return {
  on_attach = on_attach,
}

