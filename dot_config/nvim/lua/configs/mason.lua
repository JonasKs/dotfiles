local ok, mason = pcall(require, "mason")
if not ok then vim.api.nvim_err_writeln "Failed to load mason" end

local config = {
  ui = {
    icons = {
      package_installed = "✓",
      package_uninstalled = "✗",
      package_pending = "⟳",
    },
  },
}

mason.setup(config)
