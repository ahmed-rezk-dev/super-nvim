-- TODO what is a tailwindcss filetype
local lspconfig = require "lspconfig"

lspconfig.tailwindcss.setup {
  cmd = {
    -- "node", DATA_PATH .. "/lsp_servers/tailwindcss/tailwindcss-intellisense/extension/dist/server/tailwindServer.js",
    "node",
    DATA_PATH
      .. "/lsp_servers/tailwindcss_npm/node_modules/@tailwindcss/language-server/bin/tailwindcss-language-server",
    "--stdio",
  },
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          "tw`([^`]*)", -- tw`...`
          'tw="([^"]*)', -- <div tw="..." />
          'tw={"([^"}]*)', -- <div tw={"..."} />
          "tw\\.\\w+`([^`]*)", -- tw.xxx`...`
          "tw\\(.*?\\)`([^`]*)",
        },
      },
    },
  },
  on_attach = require("lsp").common_on_attach,
}
