local ok, lspkind = pcall(require, "lspkind")
if not ok then vim.api.nvim_err_writeln "Failed to load lspkind" end

local config = {
  mode = "symbol",
  symbol_map = {
    Array = "",
    Boolean = "⊨",
    Class = "",
    Constructor = "",
    Key = "",
    Namespace = "",
    Null = "NULL",
    Number = "#",
    Object = "⦿",
    Package = "",
    Property = "",
    Reference = "",
    Snippet = "",
    String = "𝓐",
    TypeParameter = "",
    Unit = "",
  },
}

lspkind.init(config)
