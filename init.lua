-- load all plugins
require "pluginList"
require "misc-utils"
require 'config.nv-globals'
require 'config.settings'
require "themes.colorscheme"

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
