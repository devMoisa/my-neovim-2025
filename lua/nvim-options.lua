


-- =======================
--   init.lua
-- =======================

-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Use the system clipboard
vim.opt.clipboard = "unnamed"
-- If you prefer to use the + register (e.g., to integrate with system clipboard on all OSes), use:
-- vim.opt.clipboard = "unnamedplus"

-- Indentation settings
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.tabstop = 2         -- Visual width of tab characters
vim.opt.softtabstop = 2     -- Number of spaces inserted for a tab
vim.opt.shiftwidth = 2      -- Change the number of space characters inserted for indentation

-- Line numbers
vim.opt.number = true             -- Show absolute line numbers
vim.opt.relativenumber = true     -- Show relative line numbers

-- Optional additions:
vim.opt.termguicolors = true  -- Enable true color support
vim.opt.wrap = false          -- Disable line wrap
vim.opt.scrolloff = 8         -- Keep 8 lines visible above/below the cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns visible to the left/right of the cursor
vim.opt.ignorecase = true     -- Case-insensitive search
vim.opt.smartcase = true      -- But case-sensitive if we type a capital letter
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.incsearch = true      -- Show search matches as you type
vim.opt.cursorline = true     -- Highlight the current line
vim.opt.showmode = false      -- Don't show -- INSERT -- below

-- Add any additional configurations or plugins below
-- For example:
-- require('plugins') -- if you have a separate Lua file to manage plugins
-- require('keymaps') -- if you want to keep keymaps in a separate file

