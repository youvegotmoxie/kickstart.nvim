return {
  'towolf/vim-helm',
  lazy = false,
  dependencies = {
    'crakkhead/ansible.nvim',
  },
  vim.filetype.add {
    pattern = {
      ['.*/.github/workflows/.*'] = 'ghaction',
    },
  },
}
