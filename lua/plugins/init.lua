local plugins = {
  {
    'RRethy/nvim-base16',
    config = function()
      vim.cmd('colorscheme base16-tomorrow-night')
    end
  },

  {
    'folke/neodev.nvim',
    lazy = true
  },

  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require "plugins.configs.treesitter"
    end
  },

  {
    'folke/which-key.nvim',
    config = function()
      require "plugins.configs.whichkey"
    end
  },

  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require "plugins.configs.colorizer"
    end
  },

  {
    'windwp/nvim-autopairs',
    config = function()
      require "plugins.configs.autopair"
    end
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require "plugins.configs.indent-blankline"
    end
  },

  -- Completion
  {
    'neovim/nvim-lsp',
    config = function()
      require "plugins.configs.lspconfig"
    end
  },

  {
    'williamboman/mason.nvim',
    build = ":MasonUpdate",
    lazy = true
  },

  {
    'williamboman/mason-lspconfig.nvim',
    lazy = true
  },

  {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'plugins.configs.cmp'
    end,
    dependencies = {
      {
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
      }
    }
  },
}

require('lazy').setup(plugins)
