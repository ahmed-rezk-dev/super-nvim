local ts_config = require "nvim-treesitter.configs"

ts_config.setup {
  ensure_installed = {
    "javascript",
    "html",
    "css",
    "bash",
    "lua",
    "json",
    "python",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  autotag = { enable = true },
  rainbow = { enable = true },
  context_commentstring = { enable = true, config = { javascriptreact = { style_element = "{/*%s*/}" } } },

  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
}
