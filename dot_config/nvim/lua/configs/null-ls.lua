local ok, null_ls = pcall(require, "null-ls")
if not ok then vim.api.nvim_err_writeln "Failed to load null-ls" end

local b = null_ls.builtins

local config = {
  sources = {
    -- Lua
    b.formatting.stylua,

    -- Rust
    b.formatting.rustfmt,

    -- Terraform
    b.formatting.terrafmt,

    -- Markdown
    b.formatting.markdownlint,

    -- Python
    b.formatting.isort,
    b.formatting.black,
    b.diagnostics.flake8,
    b.diagnostics.mypy,
  },
}

null_ls.setup(config)
