return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noctis_lux",
      background = "light"
    },
  },

  { 'talha-akram/noctis.nvim' },

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
}
