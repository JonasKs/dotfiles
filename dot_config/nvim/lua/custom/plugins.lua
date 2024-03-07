local plugins = {
  -- lsp config
  {
  "neovim/nvim-lspconfig",
  config = function ()
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
    end
  },
  -- rust vim
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  -- rust tools 
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    ft = { "rust" },
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.rustaceanvim"
    end
  },
  -- install lsps 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      }
    }
  },
  -- Debugger 
  {
    "mfussenegger/nvim-dap",
  },
  -- cargo crates help 
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  -- autocomplete in cargo crates 
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.config.cmp"
      table.insert(M.source, {name = "crates"})
      return M
    end,
  }
}
return plugins
