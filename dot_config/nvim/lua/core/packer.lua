vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    "folke/tokyonight.nvim",
    config = function() require "configs.colorscheme" end,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require "configs.treesitter" end,
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require "configs.indent_blankline" end,
  }

  use {
    "williamboman/mason.nvim",
    config = function() require "configs.mason" end,
  }

  use {
    "neovim/nvim-lspconfig",
    config = function() require "configs.lspconfig" end,
  }

  use {
    "onsails/lspkind.nvim",
    config = function() require "configs.lspkind" end,
  }

  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/vim-vsnip"

  use {
    "hrsh7th/nvim-cmp",
    config = function() require "configs.cmp" end,
  }

  use {
    "kyazdani42/nvim-web-devicons",
    config = function() require "configs.icons" end,
  }

  use {
    "nvim-lualine/lualine.nvim",
    config = function() require "configs.lualine" end,
  }

  use {
    "akinsho/bufferline.nvim",
    config = function() require "configs.bufferline" end,
  }

  use {
    "petertriho/nvim-scrollbar",
    config = function() require("scrollbar").setup() end,
  }

  use {
    "ggandor/leap.nvim",
    require = { { "tpope/vim-repeat", opt = true } },
    config = function() require("leap").set_default_keymaps() end,
  }

  use {
    "declancm/cinnamon.nvim",
    config = function() require "configs.cinnamon" end,
  }

  use {
    "numToStr/Comment.nvim",
    config = function() require "configs.comment" end,
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require "configs.autopairs" end,
  }

  use {
    "max397574/better-escape.nvim",
    config = function() require("better_escape").setup() end,
  }

  use {
    "stevearc/dressing.nvim",
    config = function() require "configs.dressing" end,
  }

  use {
    "lewis6991/gitsigns.nvim",
    config = function() require "configs.gitsigns" end,
  }

  use {
    "Darazaki/indent-o-matic",
    config = function() require("indent-o-matic").setup {} end,
  }

  -- debugging
  use "nvim-lua/plenary.nvim"
  use "mfussenegger/nvim-dap"

  use "MunifTanjim/nui.nvim"
  use {
    "nvim-neo-tree/neo-tree.nvim",
    config = function() require "configs.neo-tree" end,
  }

  use {
    "rcarriga/nvim-notify",
    config = function() require "configs.notify" end,
  }

  use {
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require "configs.null-ls" end,
  }

  use {
    "mrjones2014/smart-splits.nvim",
    config = function() require "configs.smart-splits" end,
  }

  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  }
  use {
    "s1n7ax/nvim-window-picker",
    config = function() require("window-picker").setup() end,
  }

  use {
    "folke/which-key.nvim",
    config = function() require "configs.which-key" end,
  }

  use {
    "simrat39/rust-tools.nvim",
    config = function() require "configs.lspconfig" end,
  }

  -- use { "neoclide/coc.nvim", branch = "release" }
end)
