-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.loop.os_uname().sysname == "Darwin" then
  vim.o.guifont = "Cascadia Next SC,Sarasa Mono SC,Symbols Nerd Font Mono:h13"
else
  vim.o.guifont = "Cascadia Next SC,Sarasa Mono SC,Symbols Nerd Font Mono:h10"
end
vim.o.linespace = 8
vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
vim.g.neovide_cursor_animation_length = 0
vim.g.autoformat = false
vim.g.sidescrolloff=999
vim.o.background = 'light'
