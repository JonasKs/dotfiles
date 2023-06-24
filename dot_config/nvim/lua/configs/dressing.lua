local ok, dressing = pcall(require, "dressing")
if not ok then vim.api.nvim_err_writeln "Failed to load dressing" end

local config = {
  input = {
    enabled = true,
    default_prompt = "➤ ",
    winhighlight = "Normal:Normal,NormalNC:Normal",
  },
  select = {
    enabled = true,
    backend = { "telescope", "builtin" },
    builtin = { winhighlight = "Normal:Normal,NormalNC:Normal" },
  },
}

dressing.setup(config)
