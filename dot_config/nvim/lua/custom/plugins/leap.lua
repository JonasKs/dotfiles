return {
  {
    url = 'https://codeberg.org/andyg/leap.nvim',
    name = 'leap',
    keys = {
      { 's', '<Plug>(leap-forward)', mode = { 'n', 'x', 'o' }, desc = 'Leap forward' },
      { 'S', '<Plug>(leap-backward)', mode = { 'n', 'x', 'o' }, desc = 'Leap backward' },
      { 'gs', '<Plug>(leap-from-window)', mode = { 'n', 'x', 'o' }, desc = 'Leap from window' },
    },
  },
}
