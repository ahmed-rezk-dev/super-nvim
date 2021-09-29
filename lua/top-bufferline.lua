local colors = require "themes/gruvbox-dark/palette"

require("bufferline").setup {
  options = {
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "thin",
    mappings = "true",
  },
  highlights = {
    fill = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    background = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    tab = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    tab_selected = {
      guifg = colors.bl_tab_active_fg,
      guibg = colors.bl_tab_active_bg,
    },
    tab_close = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    close_button = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    -- close_button_visible = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>'
    -- },
    close_button_selected = {
      guifg = colors.bl_tab_active_fg,
      guibg = colors.bl_tab_active_bg,
    },
    -- buffer_visible = {
    --     guifg = colors.bl_tab_fg,
    --     guibg = colors.bl_tab_bg
    -- },
    -- Avtive tab
    buffer_selected = {
      guifg = colors.bl_tab_active_fg,
      guibg = colors.bl_tab_active_bg,
      gui = "bold,italic",
    },
    -- diagnostic = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    -- },
    -- diagnostic_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    -- },
    -- diagnostic_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic"
    -- },
    -- info = {
    --     guifg = colors.bl_tab_fg,
    --     guibg = colors.bl_tab_bg,
    --     guisp = colors.bl_tab_bg
    -- },
    -- info_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- info_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = <color-value-here>
    -- },
    -- info_diagnostic = {
    --     guifg = <color-value-here>,
    --     guisp = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- info_diagnostic_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- info_diagnostic_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = <color-value-here>
    -- },
    -- warning = {
    --     guifg = <color-value-here>,
    --     guisp = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- warning_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- warning_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = <color-value-here>
    -- },
    -- warning_diagnostic = {
    --     guifg = <color-value-here>,
    --     guisp = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- warning_diagnostic_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- warning_diagnostic_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = warning_diagnostic_fg
    -- },
    -- error = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     guisp = <color-value-here>
    -- },
    -- error_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- error_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = <color-value-here>
    -- },
    -- error_diagnostic = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     guisp = <color-value-here>
    -- },
    -- error_diagnostic_visible = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>
    -- },
    -- error_diagnostic_selected = {
    --     guifg = <color-value-here>,
    --     guibg = <color-value-here>,
    --     gui = "bold,italic",
    --     guisp = <color-value-here>
    -- },
    -- modified = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>'
    -- },
    -- modified_visible = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>'
    -- },
    -- modified_selected = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>'
    -- },
    duplicate_selected = {
      guifg = colors.bl_tab_active_fg,
      guibg = colors.bl_tab_active_bg,
      gui = "italic",
    },
    -- duplicate_visible = {
    --     guifg = '<color-value-here>',
    --     gui = "italic",
    --     guibg = '<color-value-here>'
    -- },
    duplicate = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
      gui = "italic",
    },
    separator_selected = {
      guifg = colors.bl_separator_active_fg,
      guibg = colors.bl_separator_active_bg,
    },
    -- separator_visible = {
    --     guifg = colors.bl_tab_fg,
    --     guibg = colors.bl_tab_bg
    -- },
    separator = {
      guifg = colors.bl_tab_fg,
      guibg = colors.bl_tab_bg,
    },
    indicator_selected = {
      guifg = colors.bl_separator_active_fg,
      guibg = colors.bl_separator_active_bg,
    },
    -- pick_selected = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>',
    --     gui = "bold,italic"
    -- },
    -- pick_visible = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>',
    --     gui = "bold,italic"
    -- },
    -- pick = {
    --     guifg = '<color-value-here>',
    --     guibg = '<color-value-here>',
    --     gui = "bold,italic"
    -- }
  },
}

local opt = { silent = true }
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab
map("n", "<C-p>", [[<Cmd>BufferLinePick<CR>]], opt) -- pick tab

-- move between tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
map("n", "<S-l>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-h>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
