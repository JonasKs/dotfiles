local ok, bufferline = pcall(require, "bufferline")
if not ok then vim.api.nvim_err_writeln "Failed to load bufferline" end

local config = {
  options = {
    offsets = {
      { filetype = "NvimTree", text = "", padding = 1 },
      { filetype = "neo-tree", text = "", padding = 1 },
      { filetype = "Outline", text = "", padding = 1 },
    },

    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    separator_style = "thin",
  },
}

bufferline.setup(config)
