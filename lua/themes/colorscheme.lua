vim.cmd('let g:nvcode_termcolors=256')
vim.cmd ("syntax on")
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)
vim.cmd('colorscheme ' .. O.colorscheme)
vim.go.background = O.background

-- vim.g.gruvbox_transparent_bg = 1
-- vim.g.gruvbox_contrast_dark = 'soft'
