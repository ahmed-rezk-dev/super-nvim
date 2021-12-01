-- C# (csharp)
-- # Install Syntax Highlighting
-- :TSInstall c_sharp
-- 1
-- # Install Language Server
-- :LspInstall csharp
-- 1
-- # Formatters
-- The csharp language server OmniSharp supports formatting. Formatting is automatically enabled by installing the csharp language server. The formatting options can be changed by with the OmniSharp configuration optionsopen in new window.
-- clang-format open in new window can optionally be used as a C# formatter. After installing the clang-format the formatter is enabled with configuration. OmniSharp formatter is then automatically disabled.
-- Install: https://www.electronjs.org/docs/latest/development/clang-format
--
-- lvim.lang.cs.formatters = { { exe = "clang_format" } }

local nvim_lsp = require "lspconfig"
local pid = vim.fn.getpid()
local omnisharp_bin = DATA_PATH .. "/lsp_servers/csharp/omnisharp/run"

require("lspconfig").omnisharp.setup {
  filetypes = { "cs" },
  on_attach = require("lsp").common_on_attach,
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}
