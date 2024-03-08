return {
  {
    'mrcjkb/rustaceanvim',
    name = 'rustaceanvim',
    version = '^4',
    ft = { 'rust' },
    dependencies = 'neovim/nvim-lspconfig',

    config = function(_, opts)
      vim.g.rustaceanvim = vim.tbl_deep_extend('force', {}, opts or {})
    end,
  },
}
