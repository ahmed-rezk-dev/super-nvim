vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "light"
vim.o.termguicolors = true
vim.g.colors_name = "spacegray"

local util = require "themes.spacegray.util"
Config = require "themes.spacegray.config"
C = require "themes.spacegray.palette"
local highlights = require "themes.spacegray.highlights"
local Treesitter = require "themes.spacegray.Treesitter"
local markdown = require "themes.spacegray.markdown"
local Whichkey = require "themes.spacegray.Whichkey"
local Git = require "themes.spacegray.Git"
local LSP = require "themes.spacegray.LSP"

local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Git,
  LSP,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
