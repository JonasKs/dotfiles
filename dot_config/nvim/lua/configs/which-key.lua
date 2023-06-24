local ok, which_key = pcall(require, "which-key")
if not ok then vim.api.nvim_err_writeln "Failed to load which key" end

local config = {
  plugins = {
    spelling = { enabled = true },
    presets = { operators = false },
  },
  window = {
    border = "rounded",
    padding = { 2, 2, 2, 2 },
  },
}

which_key.setup(config)
