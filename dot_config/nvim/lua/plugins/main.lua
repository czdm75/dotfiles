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

  { "kaarmu/typst.vim", ft = { "typst" } },

  { "nathangrigg/vim-beancount", ft = { "beancount" } },
}
