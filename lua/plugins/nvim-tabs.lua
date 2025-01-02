return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        -- more settings...
      },
    })

    -- Optionally set keymaps here as well:
    vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to Previous Buffer" })
    vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to Next Buffer" } )  end,
}

