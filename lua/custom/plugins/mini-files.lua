return {
  {
    'nvim-mini/mini.files',
    version = '*',
    dependencies = {
      'nvim-mini/mini.icons',
    },
    keys = {
      {
        -- Open the directory of the file currently being edited
        -- If the file doesn't exist because you maybe switched to a new git branch
        -- open the current working directory
        '<leader>e',
        function()
          local buf_name = vim.api.nvim_buf_get_name(0)
          local dir_name = vim.fn.fnamemodify(buf_name, ':p:h')
          if vim.fn.filereadable(buf_name) == 1 then
            require('mini.files').open(buf_name, true)
          elseif vim.fn.isdirectory(dir_name) == 1 then
            require('mini.files').open(dir_name, true)
          else
            require('mini.files').open(vim.uv.cwd(), true)
          end
        end,
        desc = 'Open mini.files (Directory of Current File)',
      },
      -- Open the current working directory
      {
        '<leader>E',
        function()
          require('mini.files').open(vim.uv.cwd(), true)
        end,
        desc = 'Open mini.files (CWD)',
      },
    },
  },
  require('mini.files').setup(),
}
