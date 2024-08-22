-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map({ "i" }, "jk", "<ESC>", {})
-- map("n", "<S-h>", "<cmd>BufferPrevious<cr>", { desc = "Prev Buffer" })
-- map("n", "<S-l>", "<cmd>BufferNext<cr>", { desc = "Next Buffer" })
-- map("n", "[b", "<cmd>BufferPrevious<cr>", { desc = "Prev Buffer" })
-- map("n", "]b", "<cmd>BufferNext<cr>", { desc = "Next Buffer" })

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.keymap.set('n', '<ScrollWheelRight>', '<Nop>')
  vim.keymap.set('n', '<ScrollWheelLeft>', '<Nop>')
end
