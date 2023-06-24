local ok, gitsigns = pcall(require, "gitsigns")
if not ok then vim.api.nvim_err_writeln "Failed to load gitsigns" end

local config = {
  signs = {
    add = { text = "▎" },
    change = { text = "▎" },
    delete = { text = "▎" },
    topdelete = { text = "契" },
    changedelete = { text = "▎" },
  },
}

gitsigns.setup(config)
