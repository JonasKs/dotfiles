local ok, cinnamon = pcall(require, "cinnamon")
if not ok then vim.api.nvim_err_writeln "Failed to load cinnamon" end

local config = {}

cinnamon.setup(config)
