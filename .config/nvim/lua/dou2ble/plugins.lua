packer = require("packer")

-- make packer float with a rounded border
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  }
}


return packer.startup(function(use)

  use "wbthomason/packer.nvim"

  use "folke/which-key.nvim"

  use "github/copilot.vim"

  use {
    "sainnhe/sonokai",
    config = function() vim.cmd("colorscheme sonokai") end
  }

  use "tribela/vim-transparent"

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
    "gelguy/wilder.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
      "norcalli/nvim-colorizer.lua",
    config = function() require("colorizer").setup() end
  }

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require("ibl").setup() end
  }

  use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets"
  }

  use {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
    "filipdutescu/renamer.nvim",
    branch = "master",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use "lervag/vimtex"

  -- use "hrsh7th/nvim-cmp"
  -- use "hrsh7th/cmp-vsnip"
  -- use "hrsh7th/vim-vsnip"
  -- use "saadparwaiz1/cmp_luasnip"

end)
