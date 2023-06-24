local ok, wk = pcall(require, "which-key")
if not ok then vim.api.nvim_err_writeln "Could not load which key" end

wk.register {
  -- Tabs
  ["<s-h>"] = { "<cmd>BufferLineCyclePrev<CR>", "Previous Tab" },
  ["<s-l>"] = { "<cmd>BufferLineCycleNext<CR>", "Next Tab" },

  -- Splits
  ["<C-h>"] = { "<C-w>h", "Move to left split" },
  ["<C-j>"] = { "<C-w>j", "Move to below split" },
  ["<C-k>"] = { "<C-w>k", "Move to above split" },
  ["<C-l>"] = { "<C-w>l", "Move to right split" },

  ["<leader>"] = {
    -- Quick Operations
    w = { "<cmd>w<CR>", "Save File" },
    q = { "<cmd>q<CR>", "Quit File" },
    c = { "<cmd>bdelete<CR>", "Close Window" },
    h = { "<cmd>nohlsearch<CR>", "No Highlight" },

    -- NeoTree
    e = { "<cmd>Neotree toggle<CR>", "Toggle Explorer" },
    o = { "<cmd>Neotree focus<CR>", "Focus Explorer" },

    f = {
      name = "File",
      f = { "<cmd>Telescope find_files<CR>", "Find File" },
      r = { "<cmd>Telescope oldfiles<CR>", "Open recent File" },
      w = { "<cmd>Telescope livegrep<CR>", "Seach Words" },
      h = { "<cmd>Telescope help_tags<CR>", "Search Help" },
      b = { "<cmd>Telescope buffers<CR>", "Find Buffers" },
      n = { "<cmd>enew<CR>", "New File" },
    },

    p = {
      name = "Packer",
      c = { "<cmd>PackerCompile<CR>", "Packer Compile" },
      i = { "<cmd>PackerInstall<CR>", "Packer Install" },
      s = { "<cmd>PackerSync<CR>", "Packer Sync" },
      S = { "<cmd>PackerStatus<CR>", "Packer Status" },
      u = { "<cmd>PackerUpdate<CR>", "Packer Update" },
    },

    g = {
      name = "Git",
      j = {
        function() require("gitsigns").next_hunk() end,
        "Next Git Hunk",
      },
      k = {
        function() require("gitsigns").prev_hunk() end,
        "Previous Git Hunk",
      },
      l = {
        function() require("gitsigns").blame_line() end,
        "View Git Blame",
      },
      p = {
        function() require("gitsigns").preview_hunk() end,
        "Preview Git Hunk",
      },
      h = {
        function() require("gitsigns").reset_hunk() end,
        "Reset Git Hunk",
      },
      s = {
        function() require("gitsigns").stage_hunk() end,
        "Stage git hunk",
      },
      u = {
        function() require("gitsigns").undo_stage_hunk() end,
        "Unstage git hunk",
      },
      d = {
        function() require("gitsigns").diffthis() end,
        "View Git Diff",
      },
      t = { "<cmd>Telescope git_status<CR>", "View Git Status" },
      b = { "<cmd>Telescope git_branches<CR>", "View Git Branches" },
      c = { "<cmd>Telescope git_commits<CR>", "View Git Commits" },
    },

    l = {
      name = "LSP",
      I = { "<cmd>Mason<CR>", "LSP Installer" },
      i = { "<cmd>LspInfo<CR>", "LSP Information" },
      L = { "<cmd>Telescope lsp_references<CR>", "Search References" },
      S = { "<cmd>Telescope lsp_workspace_symbols<CR>", "Search Workspace Symbols" },
      D = { "<cmd>Telescope diagnostics<CR>", "Search Diagnostics" },
      d = {
        function() vim.lsp.buf.open_float() end,
        "Hoved Diagnostics",
      },
      a = {
        function() vim.lsp.buf.code_action() end,
        "Code Action",
      },
      f = {
        function() vim.lsp.buf.formatting_sync() end,
        "Format Code",
      },
      h = {
        function() vim.lsp.buf.signature_help() end,
        "Signature Help",
      },
      r = {
        function() vim.lsp.buf.rename() end,
        "Rename Symbol",
      },
      gD = {
        function() vim.lsp.buf.declaration() end,
        "Symbol Decleration",
      },
      gT = {
        function() vim.lsp.buf.type_definition() end,
        "Type Definition",
      },
      gI = {
        function() vim.lsp.buf.implementation() end,
        "Symbol Implementation",
      },
      gd = {
        function() vim.lsp.buf.definition() end,
        "Symbol Definition",
      },
      gr = {
        function() vim.lsp.buf.references() end,
        "Symbol References",
      },
      dp = {
        function() vim.lsp.buf.goto_prev() end,
        "Previous Diagnostics",
      },
      dn = {
        function() vim.lsp.buf.goto_next() end,
        "Next Diagnostics",
      },
    },
  },
}
