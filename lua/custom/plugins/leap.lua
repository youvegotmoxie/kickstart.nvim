return {
  {
    'ggandor/leap.nvim',
    url = 'https://codeberg.org/andyg/leap.nvim',
    dependencies = {},
  },
  vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap)', { desc = 'Leap [S]earch' }),
  vim.keymap.set({ 'n', 'o' }, 'gS', function()
    require('leap.remote').action { input = 'V' }
  end, { desc = 'Leap [S]earch All Windows in Visual Mode' }),

  vim.keymap.set({ 'x', 'o' }, 'R', function()
    require('leap.treesitter').select {
      opts = require('leap.user').with_traversal_keys('R', 'r'),
    }
  end),
}
