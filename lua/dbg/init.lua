-- telescope-dap
require("telescope").load_extension "dap"

-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true

-- nvim-dap-ui
require("dapui").setup {
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
}

-- local dap_install = require "dap-install"
-- dap_install.config("chrome", {})

-- languages
-- require('dbg.python')
-- require('dbg.node')
require "dbg.react"

-- nvim-dap
vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "⭐️", texthl = "", linehl = "", numhl = "" })

-- local utils = require('utils')

-- -- key mappings
-- utils.map('n', '<leader>dct', '<cmd>lua require"dap".continue()<CR>')
-- utils.map('n', '<leader>dsv', '<cmd>lua require"dap".step_over()<CR>')
-- utils.map('n', '<leader>dsi', '<cmd>lua require"dap".step_into()<CR>')
-- utils.map('n', '<leader>dso', '<cmd>lua require"dap".step_out()<CR>')
-- utils.map('n', '<leader>dtb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
--
-- utils.map('n', '<leader>dsc', '<cmd>lua require"dap.ui.variable".scopes()<CR>')
-- utils.map('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>')
-- utils.map('v', '<leader>dhv',
--           '<cmd>lua require"dap.ui.variables".visual_hover()<CR>')
--
-- utils.map('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>')
-- utils.map('n', '<leader>duf',
--           "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>")
--
-- utils.map('n', '<leader>dsbr',
--           '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
-- utils.map('n', '<leader>dsbm',
--           '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
-- utils.map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>')
-- utils.map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>')
--
-- -- telescope-dap
-- utils.map('n', '<leader>dcc',
--           '<cmd>lua require"telescope".extensions.dap.commands{}<CR>')
-- utils.map('n', '<leader>dco',
--           '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>')
-- utils.map('n', '<leader>dlb',
--           '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
-- utils.map('n', '<leader>dv',
--           '<cmd>lua require"telescope".extensions.dap.variables{}<CR>')
-- utils.map('n', '<leader>df',
--           '<cmd>lua require"telescope".extensions.dap.frames{}<CR>')
--
-- -- nvim-dap-ui
-- utils.map('n', '<leader>dui', '<cmd>lua require"dapui".toggle()<CR>')s
