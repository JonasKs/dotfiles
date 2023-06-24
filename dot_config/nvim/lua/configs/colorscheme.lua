local ok, tokyonight = pcall(require, "tokyonight")
if not ok then vim.api.nvim_err_writeln "Failed to load tokyonight theme" end

local config = {
  style = "night",

  styles = {
    comments = { italic = true },
    keyword = { italic = true },
    functions = { bold = true },
    variables = { bold = true },

    sidebars = "dark",
    floats = "dark",
  },

  sidebars = { "help", "packer" },
}

tokyonight.setup(config)
vim.cmd [[colorscheme tokyonight]]
