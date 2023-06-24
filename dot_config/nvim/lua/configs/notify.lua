local ok, notify = pcall(require, "notify")
if not ok then vim.api.nvim_err_writeln "Failed to load notify" end

local config = {
  stages = "fade",
}

notify.setup(config)
vim.notify = notify
