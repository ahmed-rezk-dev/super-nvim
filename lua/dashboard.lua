local g = vim.g

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = { "﷽" }
g.dashboard_custom_section = {
  a = { description = { "  Load Last Session         SPC S l" }, command = "SessionLoad" },
  b = { description = { "  find File                 SPC f  " }, command = "Telescope find_files" },
  c = { description = { "  Recents                   SPC s o" }, command = "Telescope oldfiles" },
  d = { description = { "  Find Word                 SPC s t" }, command = "Telescope live_grep" },
  e = { description = { "洛 New File                  SPC f b" }, command = "DashboardNewFile" },
  f = { description = { "  Bookmarks                 SPC s m" }, command = "Telescope marks" },
}

-- local num_plugins_loaded = vim.fn.system 'len(globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))'
-- print(num_plugins_loaded)
local node_version = vim.fn.systemlist("node -v")[1]
local npm_version = vim.fn.systemlist("npm -v")[1]
--local pod_version = vim.fn.systemlist("pod --version")[2]
local xcode_version = vim.fn.systemlist("/usr/bin/xcodebuild -version")[1]
-- local android_version = vim.fn.systemlist("node -v")[1]

local footer = {
  -- "Loaded " .. num_plugins_loaded .. " plugins ",
  "Node: " .. node_version,
  "npm: " .. npm_version,
  -- "Cocoapods: " .. pod_version,
  xcode_version,
  "",
  -- "Andriod: " .. andriod_version,
}
g.dashboard_custom_footer = footer
-- vim.g.dashboard_preview_command = 'cat'
-- vim.g.dashboard_preview_pipeline = 'cat'
-- vim.g.dashboard_preview_file = '~/.config/nvim/sunjon.cat'
-- vim.g.dashboard_preview_file_height = 12
-- vim.g.dashboard_preview_file_width = 80
