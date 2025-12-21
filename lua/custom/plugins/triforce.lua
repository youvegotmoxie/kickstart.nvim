return {
  {
    'gisketch/triforce.nvim',
    dependencies = { 'nvzone/volt' },
    config = function()
      require('triforce').setup {
        notifications = {
          enabled = true,
          level_up = false,
          achievements = true,
        },
        keymap = {
          show_profile = '<leader>tp',
        },
      }
    end,
  },
}
