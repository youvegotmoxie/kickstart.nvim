return {
  {
    'ggandor/leap.nvim',
    dependencies = {},
  },
  vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap)', { desc = 'Leap [S]earch' }),
  vim.keymap.set({ 'n', 'o' }, 'gS', function()
    require('leap.remote').action {
      -- Automatically enter Visual mode when coming from Normal.
      input = vim.fn.mode(true):match 'o' and '' or 'v',
    }
  end, { desc = 'Leap [S]earch Other Windows in Visual Mode' }),

  vim.keymap.set({ 'x', 'o' }, 'R', function()
    require('leap.treesitter').select {
      opts = require('leap.user').with_traversal_keys('R', 'r'),
    }
  end),
}
