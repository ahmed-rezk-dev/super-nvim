-- npm install -g emmet-ls
local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


configs.emmet_ls = {
  default_config = {
    cmd = {'emmet-ls', '--stdio'};
    filetypes = { "html", "css", "javascript", "typescript", "vue", 'twig' },
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

nvim_lsp.emmet_ls.setup{
  on_attach = on_attach;
  capabilities = capabilities,
}

vim.g.user_emmet_install_global = 0
vim.g.user_emmet_leader_key = ","

vim.g.user_emmet_settings = {
  html = {
    snippets = {
      ["!"] = table.concat(
        {
          "<!DOCTYPE html>",
          "<html lang=\"en\">",
          "\t<head>",
          "\t\t<meta charset=\"utf-8\" />",
          "\t\t<meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\" />",
          "\t\t<title>${cursor}</title>",
          "\t</head>",
          "\t<body>",
          "\t\t<div>${child}</div>",
          "\t</body>",
          "</html>",
        },
        "\n"
      ),
    },
  },
}
