local ok, comment = pcall(require, "Comment")
if not ok then vim.api.nvim_err_writeln "Failed to load comment" end

local config = {}

comment.setup(config)
