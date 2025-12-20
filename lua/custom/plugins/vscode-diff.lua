return {
  {
    'esmuellert/vscode-diff.nvim',
    dependencies = { 'MunifTanjim/nui.nvim' },
    cmd = 'CodeDiff',
    config = function()
      require('vscode-diff').setup {}
    end,
  },
}
