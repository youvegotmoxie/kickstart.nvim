return {
  {
    'gisketch/triforce.nvim',
    dependencies = { 'nvzone/volt' },
    config = function()
      require('triforce').setup {
        notifications = {
          enabled = false,
        },
        keymap = {
          show_profile = '<leader>tp',
        },
      }
    end,
  },
}
