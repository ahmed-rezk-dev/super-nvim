local M = {}

local function highlight(group, properties)
  local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
  local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
  local style = properties.style == nil and "" or "gui=" .. properties.style

  local cmd = table.concat({
    "highlight",
    group,
    bg,
    fg,
    style,
  }, " ")

  vim.api.nvim_command(cmd)
end

function M.initialise(skeleton)
  for group, properties in pairs(skeleton) do
    highlight(group, properties)
  end
end

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end



return M
