local g = vim.g

g.indentLine_enabled = 1
g.indent_blankline_show_first_indent_level = false
g.indent_blankline_buftype_exclude = { "terminal" }
g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard" }
g.indent_blankline_filetype_exclude = { "man", "help", "startify", "dashboard", "packer", "neogitstatus", "markdown" }
g.indent_blankline_char = "▏"
vim.g.indent_blankline_use_treesitter = true
g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_current_context = true
g.indent_blankline_context_patterns = {
  "class",
  "return",
  "function",
  "method",
  "^if",
  "^while",
  "^for",
  "^object",
  "^table",
  "block",
  "arguments",
  "if_statement",
  "else_clause",
  "jsx_element",
  "jsx_self_closing_element",
  "tsx_element",
  "tsx_self_closing_element",
  "try_statement",
  "catch_clause",
  "import_statement",
  "operation_type",
}
