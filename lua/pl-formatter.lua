-- vim.cmd "let proj = :Telescope projects"

-- local root_dir =   require('telescope-nvim').project_search()
-- local root_dir = require("lspconfig").util.root_pattern(".git")  -- add more stuff inside ()
local root_dir = vim.fn.getcwd()

print("project root", root_dir)

require("formatter").setup {
  logging = false,
  filetype = {
    javascript = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        -- use the global prettier if you didn't find the local one
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },
    typescript = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        -- use the global prettier if you didn't find the local one
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },
    javascriptreact = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        -- use the global prettier if you didn't find the local one
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },
    typescriptreact = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        -- use the global prettier if you didn't find the local one
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },
    tsserver = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        -- use the global prettier if you didn't find the local one
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },

    scss = {
      -- prettier
      function()
        local args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        local prettier_instance = root_dir .. "/node_modules/.bin/prettier"
        if vim.fn.executable(prettier_instance) ~= 1 then
          prettier_instance = O.lang.tsserver.formatter.exe
        end
        return {
          exe = prettier_instance,
          args = args,
          stdin = true,
        }
      end,
    },

    lua = {
      function()
        return {
          exe = "stylua",
          args = {},
          stdin = false,
        }
      end,
    },

    cs = {
      function()
        local args = { "", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) }
        return {
          exe = "clang-format",
          args = args,
          stdin = true,
        }
      end,
    },
  },
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua,*.css,*.scss,*.ts,*.tsx,*.cs FormatWrite
augroup END
]],
  true
)
