local ok, indent_blankline = pcall(require, "indent_blankline")
if not ok then vim.api.nvim_err_writeln "Failed to load indent_blankline" end

local config = {
  buftype_exclude = {
    "nofile",
    "terminal",
  },

  filetype_exclude = {
    "help",
    "startify",
    "aerial",
    "alpha",
    "dahsboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "neo-tree",
    "Trouble",
  },

  context_patterns = {
    "class",
    "return",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  },

  show_trailing_blankline_ident = false,
  use_treesitter = true,
  char = "▏",
  context_char = "▏",
  show_current_context = true,
}

indent_blankline.setup(config)
