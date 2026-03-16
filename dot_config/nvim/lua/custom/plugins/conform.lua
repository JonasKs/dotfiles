return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = true,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_format', 'ruff_organize_imports' },
        rust = { 'rustfmt' },
        go = { 'goimports-reviser', 'gofumpt', 'golines' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
