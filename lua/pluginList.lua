local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system {
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  execute "packadd packer.nvim"
end

local packer = require "packer"
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(function()
  use "wbthomason/packer.nvim"

  -- color/themes related stuff
  use "siduck76/nvim-base16.lua"
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("_colorizer").setup()
    end,
  }
  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use "morhetz/gruvbox"
  use "marko-cerovac/material.nvim"
  use {
    "EdenEast/nightfox.nvim",
    config = function()
      require("themes.nightfox").setup()
    end,
  }

  -- vim-rooter
  use "airblade/vim-rooter"

  use {
    "ahmedkhalf/project.nvim",
  }

  -- lang stuff
  use "nvim-treesitter/nvim-treesitter"
  use {
    "neovim/nvim-lspconfig",
    -- opt = true,
    -- after = "nvim-cmp",
    -- config = function()
    --   require("lsp").setup()
    -- end,
  }
  use "onsails/lspkind-nvim"
  use "sbdchd/neoformat"
  use "nvim-lua/plenary.nvim"
  use "kabouzeid/nvim-lspinstall"
  use "glepnir/lspsaga.nvim"
  use "ray-x/lsp_signature.nvim"

  use "lewis6991/gitsigns.nvim"
  use "windwp/nvim-autopairs"
  use "alvan/vim-closetag"

  use "mhartington/formatter.nvim"

  -- Syntax
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" } -- Better todo heighlight
  use "lumiliet/vim-twig"

  -- snippet/Completion support
  use {
    "rafamadriz/friendly-snippets",
    -- event = "InsertEnter",
  }
  use {
    "hrsh7th/nvim-cmp",
    after = "friendly-snippets",
    config = function()
      require("cmp-completion").setup()
    end,
  }
  use {
    "L3MON4D3/LuaSnip",
    after = "nvim-cmp",
    wants = "friendly-snippets",
    config = function()
      require("cmp-completion").luasnip()
    end,
  }
  use {
    "saadparwaiz1/cmp_luasnip",
    after = "LuaSnip",
  }
  use {
    "hrsh7th/cmp-nvim-lsp",
    after = "cmp_luasnip",
  }
  use {
    "hrsh7th/cmp-buffer",
    after = "cmp-nvim-lsp",
  }
  use {
    "hrsh7th/cmp-path",
    after = "cmp-buffer",
  }
  use {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  }
  use {
    "hrsh7th/cmp-calc",
    after = "nvim-cmp",
  }
  use {
    "f3fora/cmp-spell",
    after = "nvim-cmp",
  }
  use {
    "hrsh7th/cmp-emoji",
    after = "nvim-cmp",
  }
  use {
    "hrsh7th/cmp-cmdline",
    after = "nvim-cmp",
  }

  -- file managing , picker etc
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "ryanoasis/vim-devicons"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-lua/popup.nvim"

  -- misc
  use "glepnir/dashboard-nvim"
  use "tweekmonster/startuptime.vim"
  use "907th/vim-auto-save"
  use "karb94/neoscroll.nvim"
  use "kdav5758/TrueZen.nvim"
  use "folke/which-key.nvim"
  use { "lukas-reineke/indent-blankline.nvim", branch = "master" }

  -- Treesitter
  use "p00f/nvim-ts-rainbow"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "windwp/nvim-ts-autotag"
  use "terrortylor/nvim-comment"

  -- Git
  -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Terminal
  use { "akinsho/nvim-toggleterm.lua" }

  -- use "chimay/wheel"
  -- use "vim-ctrlspace/vim-ctrlspace"
  -- use "https://github.com/hkupty/nvimux"

  -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible.
  use {
    "phaazon/hop.nvim",
    as = "hop",
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  }

  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("_lualine").setup()
    end,
  }

  -- Debug Adapter Protocol
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use { "nvim-telescope/telescope-dap.nvim" }
  use { "Pocco81/DAPInstall.nvim" }

  -- use { "tzachar/compe-tabnine", run = "./install.sh" }

  -- Spell checking
  use "kamykn/spelunker.vim"
  use "kamykn/popup-menu.nvim"

  -- Search & Replace
  use "windwp/nvim-spectre"

  -- Code Runner.
  use { "michaelb/sniprun", run = "bash ./install.sh" }

  --* Editor support *--
  -- Surround
  use "blackCauldron7/surround.nvim"
  -- Top tabs
  -- use { "akinsho/nvim-bufferline.lua" }
  use {
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  -- Markdown Preview
  use { "iamcco/markdown-preview.nvim", run = "cd app && npm install" }

  -- Editor development
  use "nvim-treesitter/playground"
end, {
  display = {
    border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
  },
})
