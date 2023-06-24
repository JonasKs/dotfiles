local ok, smart_splits = pcall(require, "smart-splits")
if not ok then vim.api.nvim_err_writeln "Failed to load smart splits" end

local config = {
  ignored_filetypes = {
    "nofile",
    "quickfix",
    "qf",
    "prompt",
  },
  ignored_buftypes = { "nofile" },
}

smart_splits.setup(config)
