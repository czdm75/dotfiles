return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "project.nvim",
    opts = {
      manual_mode = false,
    },
  },

  {
    "echasnovski/mini.align",
    version = "*",
    config = function()
      require("mini.align").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        hls     = { mason = false },
        pyright = { mason = false },
        metals  = { mason = false },
        ruff    = { mason = false },
        tflint  = { mason = false },
        rust_analyzer = { mason = false },
      },
    },
  },
}
