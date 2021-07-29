vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.go.background = "dark"
vim.o.termguicolors = true
-- vim.g.colors_name = "gruvbox-dark"


local util = require "themes.gruvbox-dark.util"
Config = require "themes.gruvbox-dark.config"
C = require "themes.gruvbox-dark.palette"
local highlights = require "themes.gruvbox-dark.highlights"
local Treesitter = require "themes.gruvbox-dark.Treesitter"
local markdown = require "themes.gruvbox-dark.markdown"
local Whichkey = require "themes.gruvbox-dark.Whichkey"
local Git = require "themes.gruvbox-dark.Git"
local LSP = require "themes.gruvbox-dark.LSP"
-- local Bufferline = require "themes.gruvbox-dark.Bufferline"

local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Git,
  LSP,
  -- Bufferline,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
