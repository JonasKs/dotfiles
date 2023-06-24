local lsp_ok, lspconfig = pcall(require, "lspconfig")
if not lsp_ok then vim.api.nvim_err_writeln "Failed to load lspconfig" end

local rust_ok, rust_tools = pcall(require, "rust-tools")
if not rust_ok then vim.api.nvim_err_writeln "Failed to load rust-tools" end

local cmp_ok, cmp = pcall(require, "cmp_nvim_lsp")
if not cmp_ok then vim.api.nvim_err_writeln "Failed to load cmp" end

local capabilities = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, _) client.resolved_capabilities.document_formatting = false end

local rust_attach = function(_, bufnr)
  vim.keymap.set("n", "<C-space>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
  vim.keymap.set("n", "<Leader>a", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
end

local flags = {
  debounce_text_changes = 150,
}

lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = flags,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },

      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
        },
      },
    },
  },
}

lspconfig.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = flags,
}

lspconfig.terraformls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = flags,

  filetypes = {
    "terraform",
    "ts",
  },
}

rust_tools.setup {
  tools = {
    hover_with_actions = true,
    autoSetHints = true,
    inlay_hints = {
      show_parameter_hints = false,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
    },
  },
  server = {
    capabilities = capabilities,
    -- on_attach = on_attach,
    on_attach = rust_attach,
    flags = flags,
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          loadOutDirsFromCheck = true,
        },
        checkOnSave = {
          command = "clippy",
        },
      },
    },
  },
}
