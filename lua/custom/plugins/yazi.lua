return {
  {
    'mikavilpas/yazi.nvim',
    version = '*',
    event = 'VeryLazy',
    dependencies = {
      { 'nvim-lua/plenary.nvim', lazy = true },
    },
    keys = {
      {
        '<leader>c-',
        mode = { 'n', 'v' },
        '<cmd>Yazi<cr>',
        desc = 'Open Yazi at the Current File Directory',
      },
      {
        '<leader>cw',
        '<cmd>Yazi cwd<cr>',
        desc = 'Open Yazi in the [C]urrent [W]orking Directory',
      },
      {
        '<c-Y>',
        '<cmd>Yazi toggle<cr>',
        desc = 'Resume the Last Yazi Session',
      },
    },
    opts = {
      open_for_directories = false,
      change_neovim_cwd_on_close = true,
      keymaps = {
        show_help = '<f1>',
      },
    },
    init = function()
      vim.g.loaded_netrwPlugin = 1
    end,
  },
}
