-- npm install -g vscode-html-languageserver-bin

local configs = require'lspconfig/configs'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


configs.html = {
  default_config = {
    filetypes = {'html', 'css', 'javascript'};
	init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    };
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

require'lspconfig'.html.setup {
    cmd = {"node", DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js", "--stdio"},
    on_attach = require'lsp'.common_on_attach,
    capabilities = capabilities,
}
