return {
  {
    'ggandor/leap.nvim',
    name = 'leap',
    config = function()
      -- [s]earch leap forward
      -- [S]earch leap backward
      -- [s]earch from [g]window
      require('leap').create_default_mappings()
    end,
  },
}
