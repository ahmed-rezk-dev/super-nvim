local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- color related stuff
        use "siduck76/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"
        -- use 'christianchiarulli/nvcode-color-schemes.vim'
        -- use "morhetz/gruvbox"

        -- lang stuff
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "onsails/lspkind-nvim"
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"
        use "kabouzeid/nvim-lspinstall"
        use 'glepnir/lspsaga.nvim'

        use "lewis6991/gitsigns.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- Syntax
        use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }


        -- snippet support
        use "hrsh7th/vim-vsnip"
        use "rafamadriz/friendly-snippets"

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
        use {"lukas-reineke/indent-blankline.nvim", branch = "master"}

        -- Treesitter
        use 'p00f/nvim-ts-rainbow'
        use 'JoosepAlviste/nvim-ts-context-commentstring'
        use 'windwp/nvim-ts-autotag'
        use 'terrortylor/nvim-comment'

        -- Git
        -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

        -- Terminal
        use {"akinsho/nvim-toggleterm.lua"}

        -- use "chimay/wheel"
        -- use "vim-ctrlspace/vim-ctrlspace"
        -- use "https://github.com/hkupty/nvimux"

        -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible. 
        use {
          'phaazon/hop.nvim',
          as = 'hop',
          config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup()
            vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
          end
        }

    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
