local plugins = {
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   ft = {"python"},
  --   opts = function()
  --     return require "custom.configs.null-ls"
  --   end,
  -- },
  {
    "max397574/better-escape.nvim",
    event = "VeryLazy",
    config = function ()
      require("better_escape").setup()
    end
  },
  {
  "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "mypy",
        "ruff",
        "pyright",
        },
      },
    },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "github/copilot.vim"
  }
}

return plugins
