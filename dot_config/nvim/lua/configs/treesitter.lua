local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then vim.api.nvim_err_writeln "Failed to load treesitter" end

local config = {
  sync_install = false,
  ignore_install = {},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },
  autoparis = { enable = true },
  autotag = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = false },
}

treesitter.setup(config)
