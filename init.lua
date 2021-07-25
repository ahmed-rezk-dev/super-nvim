-- load all plugins
require "pluginList"
require "misc-utils"

-- Configs
require 'config.nv-globals'
require 'config.settings'
require 'config.utils'
require 'config.autocommands'

-- Colors/Theme
require "themes.colorscheme"

require "top-bufferline"
require "statusline"

require("neoscroll").setup() -- smooth scroll

-- lsp stuff

require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0


require "highlights"

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
require "colorizer"
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
require('lsp.efm-general-ls')
-- require('lsp.virtual_text')
-- require('lsp.latex-ls')
-- require('lsp.svelte-ls')
require('lsp.tailwindcss-ls')
-- require('lsp.emmet-ls')
