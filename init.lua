-- load all plugins
require "pluginList"
require'nv-globals'
require "misc-utils"
require 'settings'

require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff

require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["onedark"], true)

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

-- Colors
require "colorizer"
