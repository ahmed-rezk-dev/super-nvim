local gl = require "galaxyline"
local gls = gl.section
local condition = require "galaxyline.condition"

gl.short_line_list = { " " }

local colors = require "themes/gruvbox-dark/palette"

gls.left[1] = {
  FirstElement = {
    provider = function()
      return "▋"
    end,
    highlight = { colors.blue_skey, colors.blue_skey },
  },
}

gls.left[2] = {
  statusIcon = {
    provider = function()
      return "  "
    end,
    highlight = { colors.statusline_left_fg, colors.blue_skey },
    separator = "▶ ",
    separator_highlight = { colors.blue_skey, colors.statusline_left_bg },
  },
}

gls.left[3] = {
  FileIcon = {
    provider = "FileIcon",
    condition = condition.buffer_not_empty,
    highlight = { colors.statusline_left_fg, colors.statusline_left_bg },
  },
}

gls.left[4] = {
  FileName = {
    provider = { "FileName" },
    condition = condition.buffer_not_empty,
    highlight = { colors.statusline_left_fg, colors.statusline_left_bg },
    -- separator = " ",
    separator = "▶ ",
    separator_highlight = { colors.statusline_left_bg, colors.statusline_bg },
  },
}

gls.left[5] = {
  current_dir = {
    provider = function()
      local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      return "  " .. dir_name .. " "
    end,
    highlight = { colors.statusline_left_fg, colors.statusline_left_bg },
    -- separator = " ",
    separator = "▶ ",
    separator_highlight = { colors.statusline_left_bg, colors.statusline_bg },
  },
}

local checkwidth = function()
  local squeeze_width = vim.fn.winwidth(0) / 2
  if squeeze_width > 30 then
    return true
  end
  return false
end

gls.left[6] = {
  DiffAdd = {
    provider = "DiffAdd",
    condition = checkwidth,
    icon = "  ",
    highlight = { colors.sign_add, colors.statusline_bg },
  },
}

gls.left[7] = {
  DiffModified = {
    provider = "DiffModified",
    condition = checkwidth,
    icon = "   ",
    highlight = { colors.sign_change, colors.statusline_bg },
  },
}

gls.left[8] = {
  DiffRemove = {
    provider = "DiffRemove",
    condition = checkwidth,
    icon = "  ",
    highlight = { colors.sign_delete, colors.statusline_bg },
  },
}

gls.left[9] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    icon = "  ",
    highlight = { colors.error_red, colors.statusline_bg },
  },
}

gls.left[10] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    icon = "  ",
    highlight = { colors.warning_orange, colors.statusline_bg },
  },
}

local get_lsp_client = function(msg)
  msg = msg or "LSP Inactive "
  local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
  local clients = vim.lsp.get_active_clients()
  if next(clients) == nil then
    return msg
  end
  local lsps = ""
  for _, client in ipairs(clients) do
    local filetypes = client.config.filetypes
    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      -- print(client.name)
      if lsps == "" then
        -- print("first", lsps)
        lsps = client.name
      else
        if not string.find(lsps, client.name) then
          lsps = lsps .. ", " .. client.name
        end
        -- print("more", lsps)
      end
    end
  end
  if lsps == "" then
    return msg
  else
    return "  " .. lsps .. " / " .. buf_ft .. " "
  end
end

gls.right[1] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    icon = "  ",
    highlight = { colors.red, colors.statusline_bg },
  },
}

gls.right[2] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    icon = "  ",
    highlight = { colors.orange, colors.statusline_bg },
  },
}

gls.right[3] = {
  DiagnosticInfo = {
    provider = "DiagnosticInfo",
    icon = "  ",
    highlight = { colors.yellow, colors.statusline_bg },
  },
}

gls.right[4] = {
  DiagnosticHint = {
    provider = "DiagnosticHint",
    icon = "  ",
    highlight = { colors.blue, colors.statusline_bg },
  },
}

gls.right[5] = {
  lsp_status = {
    provider = get_lsp_client,
    highlight = { colors.grey_fg2, colors.statusline_bg },
  },
}

gls.right[6] = {
  GitIcon = {
    provider = function()
      return " "
    end,
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    highlight = { colors.statusline_right_fg, colors.statusline_right_bg },
    separator = "",
    separator_highlight = { colors.statusline_right_bg, colors.statusline_bg },
  },
}

gls.right[7] = {
  GitBranch = {
    provider = "GitBranch",
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    highlight = { colors.statusline_right_fg, colors.statusline_right_bg },
  },
}

gls.right[8] = {
  viMode_icon = {
    provider = function()
      return " "
    end,
    highlight = { colors.white, colors.red },
    separator = " ",
    separator_highlight = { colors.red, colors.statusline_right_bg },
  },
}

gls.right[9] = {
  ViMode = {
    provider = function()
      local alias = {
        n = "Normal",
        i = "Insert",
        c = "Command",
        V = "Visual",
        [""] = "Visual",
        v = "Visual",
        R = "Replace",
      }
      local current_Mode = alias[vim.fn.mode()]

      if current_Mode == nil then
        return "  Terminal "
      else
        return "  " .. current_Mode .. " "
      end
    end,
    highlight = { colors.red, colors.statusline_right_bg },
  },
}

gls.right[10] = {
  some_icon = {
    provider = function()
      return " "
    end,
    separator = "",
    separator_highlight = { colors.info_yellow, colors.statusline_right_bg },
    highlight = { colors.lightbg, colors.info_yellow },
  },
}

gls.right[11] = {
  line_percentage = {
    provider = function()
      local current_line = vim.fn.line "."
      local total_line = vim.fn.line "$"

      if current_line == 1 then
        return "  Top "
      elseif current_line == vim.fn.line "$" then
        return "  Bot "
      end
      local result, _ = math.modf((current_line / total_line) * 100)
      return "  " .. result .. "% "
    end,
    highlight = { colors.info_yellow, colors.statusline_right_bg },
  },
}
