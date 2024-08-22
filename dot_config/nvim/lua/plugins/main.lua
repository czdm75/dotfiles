return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  {
    "echasnovski/mini.align",
    version = "*",
    config = function()
      require("mini.align").setup()
    end,
  },

  -- Use hls and pyright from PATH, not mason
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        hls = {
          mason = false,
        },
        pyright = {
          mason = false,
        },
      },
    },
  },

  -- Third Party Plugins

  -- alternative tab bar
  -- {
  --   "romgrk/barbar.nvim",
  --   init = function() vim.g.barbar_auto_setup = false end,
  --   version = "^1.0.0", -- optional: only update when a new 1.x version is released
  -- },

  { "kaarmu/typst.vim", ft = { "typst" } },

  { "nathangrigg/vim-beancount", ft = { "beancount" } },
}
