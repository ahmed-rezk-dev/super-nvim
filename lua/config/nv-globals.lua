DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
TERMINAL = vim.fn.expand "$TERMINAL"
USER = vim.fn.expand "$USER"

O = {
  auto_close_tree = 0,
  auto_complete = true,
  transparent_window = true,
  -- colorscheme = "spacegray",
  colorscheme = "palefox",
  -- colorscheme = 'gruvbox',
  -- background = 'light',
  -- background = "dark",
  hidden_files = true,
  wrap_lines = false,
  number = true,
  relative_number = true,
  shell = "bash",
  -- vsnip_dir = os.getenv "HOME" .. "/.config/snippets",

  default_options = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    cmdheight = 1, -- more space in the neovim command line for displaying messages
    colorcolumn = "99999", -- fixes indentline for now
    completeopt = { "menuone", "noselect" },
    conceallevel = 0, -- so that `` is visible in markdown files
    fileencoding = "utf-8", -- the encoding written to a file
    foldmethod = "indent", -- folding, set to "expr" for treesitter based foloding
    foldopen = "block",
    foldlevel = 2,
    foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    guifont = "monospace:h17", -- the font used in graphical neovim applications
    hidden = true, -- required to keep multiple buffers and open multiple buffers
    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    pumheight = 10, -- pop up menu height
    showmode = false, -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2, -- always show tabs
    smartcase = true, -- smart case
    smartindent = true, -- make indenting smarter again
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = false, -- creates a swapfile
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
    title = true, -- set the title of window to the value of the titlestring
    -- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
    undodir = CACHE_PATH .. "/undo", -- set an undo directory
    undofile = true, -- enable persisten undo
    updatetime = 300, -- faster completion
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 2, -- the number of spaces inserted for each indentation
    tabstop = 2, -- insert 2 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = false, -- set relative numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
    wrap = false, -- display lines as one long line
    spell = false,
    spelllang = "en",
    scrolloff = 8, -- is one of my fav
    sidescrolloff = 8,
  },

  lsp = {
    diagnostics = {
      virtual_text = {
        prefix = "",
        spacing = 0,
      },
      signs = true,
      underline = true,
    },
    document_highlight = true,
    popup_border = "single",
    default_keybinds = true,
    on_attach_callback = nil,
  },

  -- @usage pass a table with your desired languages
  treesitter = {
    ensure_installed = "all",
    ignore_install = { "haskell" },
    highlight = { enabled = true },
    playground = { enabled = true },
    rainbow = { enabled = true },
  },

  database = { save_location = "~/.config/nvcode_db", auto_execute = 1 },
  python = {
    linter = "",
    -- @usage can be 'yapf', 'black'
    formatter = "",
    autoformat = false,
    isort = false,
    diagnostics = { virtual_text = true, signs = true, underline = true },
  },
  dart = { sdk_path = "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot" },
  lua = {
    -- @usage can be 'lua-format'
    formatter = "",
    autoformat = false,
    diagnostics = { virtual_text = true, signs = true, underline = true },
  },
  sh = {
    -- @usage can be 'shellcheck'
    linter = "",
    -- @usage can be 'shfmt'
    formatter = "",
    autoformat = false,
    diagnostics = { virtual_text = true, signs = true, underline = true },
  },
  tsserver = {
    -- @usage can be 'eslint'
    linter = "",
    -- @usage can be 'prettier'
    formatter = "",
    autoformat = true,
    diagnostics = { virtual_text = true, signs = true, underline = true },
  },
  json = {
    -- @usage can be 'prettier'
    formatter = "",
    autoformat = false,
    diagnostics = { virtual_text = true, signs = true, underline = true },
  },
  tailwindls = {
    filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  clang = { diagnostics = { virtual_text = true, signs = true, underline = true } },
  lang = {
    tsserver = {
      -- @usage can be 'eslint' or 'eslint_d'
      linter = "",
      diagnostics = {
        virtual_text = { spacing = 0, prefix = "" },
        signs = true,
        underline = true,
      },
      formatter = {
        exe = "prettier",
        args = {},
      },
    },
  },
  -- json = {formatter = '', autoformat = false, virtual_text = true}
}

DATA_PATH = vim.fn.stdpath "data"
CACHE_PATH = vim.fn.stdpath "cache"
