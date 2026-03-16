return {
  {
    'mrcjkb/rustaceanvim',
    name = 'rustaceanvim',
    version = '^6',
    ft = { 'rust' },
    dependencies = 'neovim/nvim-lspconfig',
    lazy = false,

    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend('force', {}, opts or {})
    end,
  },
}
