local M = {}

function M.setup()
  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
  end

  local cmp = require "cmp"

  cmp.setup {
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    mapping = {
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
        select = true,
      },
      ["<Tab>"] = cmp.mapping(function(fallback)
        local luasnip = require "luasnip"
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        local luasnip = require "luasnip"
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
    },
    sources = {
      {
        name = "nvim_lsp",
      },
      {
        name = "buffer",
      },
      {
        name = "luasnip",
      },
      {
        name = "path",
      },
    },
  }
end

M.luasnip = function()
  local luasnip = require "luasnip"
  luasnip.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  }

  require("luasnip/loaders/from_vscode").lazy_load()
end

return M

-------------------------------------------------------------------------- 2
-- vim.o.completeopt = "menuone,noselect"
--
-- local cmp = require "cmp"
-- -- Lspkind for menu icons
-- local lspkind = require "lspkind"
-- -- luasnip setup
-- local luasnip = require "luasnip"
--
-- -- cmp in cmdline is a WIP - I mostly use telescope to navigate anyway
-- cmp.setup.cmdline("/", {
--   sources = cmp.config.sources {
--     { name = "buffer" },
--   },
-- })
--
-- -- Use cmdline & path source for ':'.
-- cmp.setup.cmdline(":", {
--   sources = cmp.config.sources({
--     { name = "path" },
--   }, {
--     { name = "cmdline" },
--   }),
-- })
--
-- -- Setup nvim-cmp
-- local has_words_before = function()
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
-- end
--
-- cmp.setup {
--   snippet = {
--     expand = function(args)
--       luasnip.lsp_expand(args.body)
--     end,
--   },
--   mapping = {
--     ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--     ["<C-f>"] = cmp.mapping.scroll_docs(4),
--     ["<C-Space>"] = cmp.mapping.complete(),
--     ["<CR>"] = cmp.mapping {
--       i = cmp.mapping.confirm { select = true },
--       c = cmp.mapping.confirm { select = false },
--     },
--     ["<C-e>"] = cmp.mapping.abort(),
--     ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { "i", "c" }),
--     ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { "i", "c" }),
--     ["<Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       elseif luasnip.expand_or_jumpable() then
--         luasnip.expand_or_jump()
--       elseif has_words_before() then
--         cmp.complete()
--       else
--         fallback()
--       end
--     end, {
--       "i",
--       "s",
--     }),
--     ["<S-Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       elseif luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, {
--       "i",
--       "s",
--     }),
--     --     ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
--     --     ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
--   },
--   experimental = {
--     ghost_text = true,
--   },
--   documentation = {
--     border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
--   },
--   sources = {
--     -- 'crates' is lazy loaded
--     { name = "luasnip" },
--     { name = "nvim_lsp" },
--     { name = "treesitter" },
--     { name = "path" },
--     { name = "spell" },
--     { name = "buffer" },
--     { name = "nvim_lua" },
--     { name = "look" },
--     { name = "cmp_tabnine" },
--     { name = "calc" },
--     { name = "emoji" },
--     { name = "vsnip" },
--   },
--   formatting = {
--     format = function(entry, vim_item)
--       vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
--       vim_item.menu = ({
--         luasnip = "(Snippet)",
--         nvim_lsp = "ﲳ",
--         nvim_lua = "",
--         treesitter = "",
--         path = "ﱮ",
--         buffer = "﬘",
--         zsh = "",
--         spell = "暈",
--         cmp_tabnine = "[TabNine]",
--         look = "[Look]",
--         calc = "[Calc]",
--         emoji = "[Emoji]",
--         -- vsnip = "",
--       })[entry.source.name]
--
--       return vim_item
--     end,
--   },
-- }
--
-- -- TabNine
-- local tabnine = require "cmp_tabnine.config"
-- tabnine:setup { max_lines = 1000, max_num_results = 20, sort = true }
--
-- -- Database completion
-- vim.api.nvim_exec(
--   [[
-- autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
-- ]],
--   false
-- )
--
