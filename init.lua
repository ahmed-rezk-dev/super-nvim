-- load all plugins
require "pluginList"
require "misc-utils"



-- local base16 = require "base16"
-- base16(base16.themes["themes.gruvbox-dark"], true)

-- Configs
require 'config.nv-globals'
require 'config.settings'
require 'config.utils'
require 'config.autocommands'



-- Colors/Theme
-- require "themes.colorscheme"

require "top-bufferline"
require "statusline"

require("neoscroll").setup() -- smooth scroll

-- lsp stuff

require "compe-completion"
require "lsp-signature"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

require 'themes.gruvbox-dark'
-- require 'themes.spacegray'
-- require "highlights"



-- blankline
require "indentline"

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "zenmode"
require "whichkey"
require "dashboard"
require "commentLins"

-- Colors
require'colorizer'.setup(
  {'*';},
  {
    RGB      = true;         -- #RGB hex codes
    RRGGBB   = true;         -- #RRGGBB hex codes
    RRGGBBAA = true;         -- #RRGGBBAA hex codes
    rgb_fn   = true;         -- CSS rgb() and rgba() functions
    hsl_fn   = true;         -- CSS hsl() and hsla() functions
    css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })
-- Terminal
require("terminal").config()

-- LSP
require('lsp')
-- require('lsp.clangd')
-- require('lsp.php-ls')
-- require('lsp.dart-ls')
-- require('lsp.lua-ls')
-- require('lsp.bash-ls')
-- require('lsp.go-ls')
require('lsp.js-ts-ls')
-- require('lsp.python-ls')
-- require('lsp.rust-ls')
require('lsp.json-ls')
-- require('lsp.yaml-ls')
require('lsp.terraform-ls')
require('lsp.vim-ls')
require('lsp.graphql-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.tailwindcss-ls')
require('lsp.efm-general-ls')
-- require('lsp.virtual_text')
-- require('lsp.latex-ls')
-- require('lsp.svelte-ls')
-- require('lsp.emmet-ls')
vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.
